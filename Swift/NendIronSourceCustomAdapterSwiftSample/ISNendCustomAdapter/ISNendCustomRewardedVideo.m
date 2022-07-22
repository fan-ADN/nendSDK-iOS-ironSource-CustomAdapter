//
//  ISNendCustomRewardedVideo.m
//  ISNendCustomAdapter
//
//  Copyright(c) FAN Communications, Inc. All Rights Reserved
//

#import "ISNendCustomRewardedVideo.h"
#import "ISNendCustomAdapter.h"
#import "NendAd/NendAd.h"

@interface ISNendCustomRewardedVideo () <NADRewardedVideoDelegate>

@property (nonatomic) NADRewardedVideo *rewardedVideo;
@property (nonatomic, weak) id<ISRewardedVideoAdDelegate> rewardedVideoAdDelegate;

@end

@implementation ISNendCustomRewardedVideo

- (void)loadAdWithAdData:(nonnull ISAdData *)adData
                delegate:(nonnull id<ISRewardedVideoAdDelegate>)delegate {
    NSString *spotId = adData.configuration[ISNendCustomAdapterSpotId];
    NSString *apiKey = adData.configuration[ISNendCustomAdapterApiKey];
    if (spotId.length == 0 || apiKey.length == 0) {
        [delegate adDidFailToLoadWithErrorType:ISAdapterErrorTypeInternal
                                     errorCode:ISAdapterErrorMissingParams
                                  errorMessage:@"[Nend] Configuration data was not found. Please make sure that ad data is registered in dashboard."];
        return;
    }
    ISNendCustomAdapter *networkAdapter = nil;
    id<ISAdapterBaseProtocol> adapter = [self getNetworkAdapter];
    
    if ([adapter isKindOfClass:[ISNendCustomAdapter class]]) {
        networkAdapter = (ISNendCustomAdapter*)adapter;
    }
    if (networkAdapter == nil) {
        [delegate adDidFailToLoadWithErrorType:ISAdapterErrorTypeInternal
                                     errorCode:ISAdapterErrorInternal
                                  errorMessage:@"[Nend] Missing network adapter."];
        return;
    }
    
    self.rewardedVideoAdDelegate = delegate;
    self.rewardedVideo = [[NADRewardedVideo alloc] initWithSpotID:[spotId integerValue] apiKey:apiKey];
    self.rewardedVideo.delegate = self;
    self.rewardedVideo.mediationName = [networkAdapter mediationName];
    [self.rewardedVideo loadAd];
}

- (BOOL)isAdAvailableWithAdData:(nonnull ISAdData *)adData {
    return self.rewardedVideo.isReady;
}

- (void)showAdWithViewController:(nonnull UIViewController *)viewController
                          adData:(nonnull ISAdData *)adData
                        delegate:(nonnull id<ISRewardedVideoAdDelegate>)delegate {
    self.rewardedVideoAdDelegate = delegate;
    if (self.rewardedVideo.isReady) {
        [self.rewardedVideo showAdFromViewController:viewController];
    } else {
        [delegate adDidFailToShowWithErrorCode:ISAdapterErrorInternal
                                  errorMessage:@"[Nend] Ad is not available. Please make sure that ad has finished loading."];
    }
}

#pragma mark - NADRewardedVideoDelegate

- (void)nadRewardVideoAd:(NADRewardedVideo *)nadRewardedVideoAd didReward:(NADReward *)reward {
    [self.rewardedVideoAdDelegate adRewarded];
}

- (void)nadRewardVideoAdDidReceiveAd:(NADRewardedVideo *)nadRewardedVideoAd {
    [self.rewardedVideoAdDelegate adDidLoad];
}

- (void)nadRewardVideoAd:(NADRewardedVideo *)nadRewardedVideoAd didFailToLoadWithError:(NSError *)error {
    ISAdapterErrorType errorType;
    NSString *errorMessage = [NSString stringWithFormat:@"[Nend] onFailedToLoad: ERROR CODE is %ld. ", (long)error.code];
    if (error.code == 204) {
        errorType = ISAdapterErrorTypeNoFill;
        errorMessage = [errorMessage stringByAppendingString:@"No delivery ads."];
    } else {
        errorType = ISAdapterErrorTypeInternal;
        errorMessage = [errorMessage stringByAppendingString:@"Please see the https://github.com/fan-ADN/nendSDK-iOS/wiki/Implementation-for-Rewarded-Video-ads#loading-of-ad-is-failed"];
    }
    [self.rewardedVideoAdDelegate adDidFailToLoadWithErrorType:errorType
                                                     errorCode:ISAdapterErrorInternal
                                                  errorMessage:errorMessage];
}

- (void)nadRewardVideoAdDidFailedToPlay:(NADRewardedVideo *)nadRewardedVideoAd {
    [self.rewardedVideoAdDelegate adDidFailToShowWithErrorCode:ISAdapterErrorInternal
                                                  errorMessage:@"[Nend] Failed to play video ad..."];
}

- (void)nadRewardVideoAdDidOpen:(NADRewardedVideo *)nadRewardedVideoAd {
    [self.rewardedVideoAdDelegate adDidOpen];
    [self.rewardedVideoAdDelegate adDidBecomeVisible];
    [self.rewardedVideoAdDelegate adDidShowSucceed];
}

- (void)nadRewardVideoAdDidClose:(NADRewardedVideo *)nadRewardedVideoAd {
    [self.rewardedVideoAdDelegate adDidClose];
}

- (void)nadRewardVideoAdDidStartPlaying:(NADRewardedVideo *)nadRewardedVideoAd {
    [self.rewardedVideoAdDelegate adDidStart];
}

- (void)nadRewardVideoAdDidCompletePlaying:(NADRewardedVideo *)nadRewardedVideoAd {
    [self.rewardedVideoAdDelegate adDidEnd];
}

- (void)nadRewardVideoAdDidClickAd:(NADRewardedVideo *)nadRewardedVideoAd {
    [self.rewardedVideoAdDelegate adDidClick];
}

@end
