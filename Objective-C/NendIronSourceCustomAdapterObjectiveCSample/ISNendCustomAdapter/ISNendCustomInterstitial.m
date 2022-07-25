//
//  ISNendCustomInterstitial.m
//  ISNendCustomAdapter
//
//  Copyright(c) FAN Communications, Inc. All Rights Reserved
//

#import "ISNendCustomInterstitial.h"
#import "ISNendCustomAdapter.h"
#import "NendAd/NendAd.h"

typedef NS_ENUM(NSUInteger, ISNendCustomInterstitialType) {
    ISNendCustomInterstitialTypeStatic,
    ISNendCustomInterstitialTypeVideo
};

@interface ISNendCustomInterstitial () <NADInterstitialLoadingDelegate, NADInterstitialClickDelegate, NADInterstitialVideoDelegate>

@property (nonatomic) ISNendCustomInterstitialType interstitialType;
@property (nonatomic, weak) id<ISInterstitialAdDelegate> interstitialAdDelegate;
@property (nonatomic) NSInteger spotId;
@property (nonatomic) NADInterstitialVideo *interstitialVideo;
@property (nonatomic) BOOL isReady;

@end

@implementation ISNendCustomInterstitial

- (void)loadAdWithAdData:(nonnull ISAdData *)adData
                delegate:(nonnull id<ISInterstitialAdDelegate>)delegate {
    
    self.isReady = NO;
    
    NSString *spotId = adData.configuration[ISNendCustomAdapterSpotId];
    NSString *apiKey = adData.configuration[ISNendCustomAdapterApiKey];
    NSString *instanceName = adData.configuration[ISNendCustomAdapterInstanceName];
    if (spotId.length == 0 || apiKey.length == 0 || instanceName.length == 0) {
        [delegate adDidFailToLoadWithErrorType:ISAdapterErrorTypeInternal
                                     errorCode:ISAdapterErrorMissingParams
                                  errorMessage:@"[Nend] Configuration data was not found. Please make sure that ad data is registered in dashboard."];
        return;
    }
    
    self.interstitialAdDelegate = delegate;
    self.spotId = [spotId integerValue];
    NSString *instanceNameRegex = @"^Nend(Video|Static)(-\\d+)?$";
    NSPredicate *instanceNamePredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", instanceNameRegex];
    
    if (![instanceNamePredicate evaluateWithObject:instanceName]) {
        [self.interstitialAdDelegate adDidFailToLoadWithErrorType:ISAdapterErrorTypeInternal
                                                        errorCode:ISAdapterErrorMissingParams
                                                     errorMessage:@"[Nend] Interstitial Type was not found. Please set Instance Name \"NendVideo\" or \"NendStatic\"."];
    } else if ([instanceName containsString:@"Video"]) {
        self.interstitialType = ISNendCustomInterstitialTypeVideo;
        [self loadVideoInterstitialWithSpotID:self.spotId apiKey:apiKey];
    } else if ([instanceName containsString:@"Static"]) {
        self.interstitialType = ISNendCustomInterstitialTypeStatic;
        [self loadStaticInterstitialWithSpotID:self.spotId apiKey:apiKey];
    }
}

- (BOOL)isAdAvailableWithAdData:(nonnull ISAdData *)adData {
    return self.isReady;
}

- (void)showAdWithViewController:(UIViewController *)viewController
                          adData:(ISAdData *)adData
                        delegate:(id<ISInterstitialAdDelegate>)delegate {
    self.interstitialAdDelegate = delegate;
    switch (self.interstitialType) {
        case ISNendCustomInterstitialTypeStatic:
            [self showStaticInterstitialWithViewController:viewController];
            break;
        case ISNendCustomInterstitialTypeVideo:
            [self showVideoInterstitialWithViewController:viewController];
            break;
        default:
            [self.interstitialAdDelegate adDidFailToShowWithErrorCode:ISAdapterErrorInternal
                                                         errorMessage:@"[Nend] Interstitial Type was not found. Please set Instance Name \"NendVideo\" or \"NendStatic\"."];
            break;
    }
}

#pragma mark - private methods

- (void)loadStaticInterstitialWithSpotID:(NSInteger)spotId
                                  apiKey:(NSString *)apiKey {
    NADInterstitial *interstitial = [NADInterstitial sharedInstance];
    interstitial.loadingDelegate = self;
    interstitial.enableAutoReload = NO;
    dispatch_async(dispatch_get_main_queue(), ^{
        [interstitial loadAdWithSpotID:spotId apiKey:apiKey];
    });
}

- (void)loadVideoInterstitialWithSpotID:(NSInteger)spotId
                                 apiKey:(NSString *)apiKey {
    ISNendCustomAdapter *networkAdapter = nil;
    id<ISAdapterBaseProtocol> adapter = [self getNetworkAdapter];
    
    if ([adapter isKindOfClass:[ISNendCustomAdapter class]]) {
        networkAdapter = (ISNendCustomAdapter*)adapter;
    }
    if (networkAdapter == nil) {
        [self.interstitialAdDelegate adDidFailToLoadWithErrorType:ISAdapterErrorTypeInternal
                                                        errorCode:ISAdapterErrorInternal
                                                     errorMessage:@"[Nend] Missing network adapter."];
        return;
    }
    
    self.interstitialVideo = [[NADInterstitialVideo alloc] initWithSpotID:spotId apiKey:apiKey];
    self.interstitialVideo.mediationName = [networkAdapter mediationName];
    self.interstitialVideo.delegate = self;
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.interstitialVideo loadAd];
    });
}

- (void)showStaticInterstitialWithViewController:(UIViewController *)viewController {
    NADInterstitial *interstitial = [NADInterstitial sharedInstance];
    interstitial.clickDelegate = self;
    NADInterstitialShowResult result = [interstitial showAdFromViewController:viewController spotID:self.spotId];
    if (result == AD_SHOW_SUCCESS) {
        [self.interstitialAdDelegate adDidOpen];
        [self.interstitialAdDelegate adDidShowSucceed];
    } else {
        NSString *errorMessage = [NSString stringWithFormat:@"[Nend] Failed to show ad: %ld. Please see the https://github.com/fan-ADN/nendSDK-iOS/wiki/Implementation-for-interstitial-ads#displaying-ads", (long)result];
        [self.interstitialAdDelegate adDidFailToShowWithErrorCode:ISAdapterErrorInternal
                                                     errorMessage:errorMessage];
    }
}

- (void)showVideoInterstitialWithViewController:(UIViewController *)viewController {
    if ([self.interstitialVideo isReady]) {
        self.interstitialVideo.delegate = self;
        [self.interstitialVideo showAdFromViewController:viewController];
    } else {
        [self.interstitialAdDelegate adDidFailToShowWithErrorCode:ISAdapterErrorInternal
                                                     errorMessage:@"[Nend] Ad is not available. Please make sure that ad has finished loading."];
    }
}

#pragma mark - NADInterstitialLoadingDelegate

- (void)didFinishLoadInterstitialAdWithStatus:(NADInterstitialStatusCode)status spotID:(NSInteger)spotId {
    if (self.spotId == spotId) {
        switch (status) {
            case SUCCESS:
                self.isReady = YES;
                [self.interstitialAdDelegate adDidLoad];
                break;
            case INVALID_RESPONSE_TYPE:
            case FAILED_AD_REQUEST:
            case FAILED_AD_DOWNLOAD:
            default:
            {
                NSString *errorMessage = [NSString stringWithFormat:@"[Nend] Failed to load interstitial ad: %ld", (long)status];
                self.isReady = NO;
                [self.interstitialAdDelegate adDidFailToLoadWithErrorType:ISAdapterErrorTypeInternal
                                                                errorCode:ISAdapterErrorInternal
                                                             errorMessage:errorMessage];
            }
                break;
        }
    }
}

#pragma mark - NADInterstitialClickDelegate

- (void)didClickWithType:(NADInterstitialClickType)type spotID:(NSInteger)spotId {
    if (self.spotId == spotId) {
        switch (type) {
            case DOWNLOAD:
                [self.interstitialAdDelegate adDidClick];
                break;
            case CLOSE:
            case INFORMATION:
            default:
                break;
        }
        [self.interstitialAdDelegate adDidClose];
    }
}

#pragma mark - NADInterstitialVideoDelegate

- (void)nadInterstitialVideoAdDidReceiveAd:(NADInterstitialVideo *)nadInterstitialVideoAd {
    self.isReady = YES;
    [self.interstitialAdDelegate adDidLoad];
}

- (void)nadInterstitialVideoAd:(NADInterstitialVideo *)nadInterstitialVideoAd didFailToLoadWithError:(NSError *)error {
    self.isReady = NO;
    ISAdapterErrorType errorType;
    NSString *errorMessage = [NSString stringWithFormat:@"[Nend] onFailedToLoad: ERROR CODE is %ld. ", (long)error.code];

    if (error.code == 204) {
        errorType = ISAdapterErrorTypeNoFill;
        errorMessage = [errorMessage stringByAppendingString:@"No delivery ads."];
    } else {
        errorType = ISAdapterErrorTypeInternal;
        errorMessage = [errorMessage stringByAppendingString:@"Please see the https://github.com/fan-ADN/nendSDK-iOS/wiki/Implementation-for-Interstitial-Video-ads#loading-of-ad-is-failed"];
    }
    
    [self.interstitialAdDelegate adDidFailToLoadWithErrorType:errorType
                                                    errorCode:ISAdapterErrorInternal
                                                 errorMessage:errorMessage];
}

- (void)nadInterstitialVideoAdDidOpen:(NADInterstitialVideo *)nadInterstitialVideoAd {
    [self.interstitialAdDelegate adDidOpen];
    [self.interstitialAdDelegate adDidShowSucceed];
}

- (void)nadInterstitialVideoAdDidFailedToPlay:(NADInterstitialVideo *)nadInterstitialVideoAd {
    [self.interstitialAdDelegate adDidFailToShowWithErrorCode:ISAdapterErrorInternal
                                                 errorMessage:@"[Nend] Failed to play video ad..."];
}

- (void)nadInterstitialVideoAdDidClickAd:(NADInterstitialVideo *)nadInterstitialVideoAd {
    [self.interstitialAdDelegate adDidClick];
}

- (void)nadInterstitialVideoAdDidClose:(NADInterstitialVideo *)nadInterstitialVideoAd {
    [self.interstitialAdDelegate adDidClose];
}

@end
