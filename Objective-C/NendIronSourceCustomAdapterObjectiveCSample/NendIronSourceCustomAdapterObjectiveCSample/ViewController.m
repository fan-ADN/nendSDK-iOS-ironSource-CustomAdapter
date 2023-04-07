//
//  ViewController.m
//  NendIronSourceCustomAdapterObjectiveCSample
//
//  Copyright(c) FAN Communications, Inc. All Rights Reserved
//

#import "ViewController.h"
#import <IronSource/IronSource.h>
@import AppTrackingTransparency;

#define APPKEY @"YOUR_APP_KEY"

@interface ViewController ()

@property (nonatomic) ViewControllerCallback *delegate;
@property (weak, nonatomic) IBOutlet UIButton *showRVButton;
@property (weak, nonatomic) IBOutlet UIButton *showISButton;
@property (weak, nonatomic) IBOutlet UIButton *loadISButton;
@property (weak, nonatomic) IBOutlet UILabel  *versionLabel;

@end

@interface ViewControllerCallback () <LevelPlayRewardedVideoDelegate, LevelPlayInterstitialDelegate>

@property (nonatomic) ISPlacementInfo *rvPlacementInfo;
@property (nonatomic) ViewController *viewController;

@end

@implementation ViewControllerCallback

- (id)initWithViewController:(ViewController *)viewController
{
    self = [super init];
    if (self) {
        self.viewController = viewController;
    }
    return self;
}

#pragma mark - Rewarded Video Delegate Functions

/**
 Called after a rewarded video has been clicked.
 @param placementInfo An object that contains the placement's reward name and amount.
 @param adInfo The info of the ad.
 */
- (void)didClick:(ISPlacementInfo *)placementInfo withAdInfo:(ISAdInfo *)adInfo {
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

/**
 Called after a rewarded video has been viewed completely and the user is eligible for a reward.
 @param placementInfo An object that contains the placement's reward name and amount.
 @param adInfo The info of the ad.
 */
- (void)didReceiveRewardForPlacement:(ISPlacementInfo *)placementInfo withAdInfo:(ISAdInfo *)adInfo {
    NSLog(@"%s", __PRETTY_FUNCTION__);
    self.rvPlacementInfo = placementInfo;
}

/**
 Called after a rewarded video has changed its availability to true.
 @param adInfo The info of the ad.
 */
- (void)hasAvailableAdWithAdInfo:(ISAdInfo *)adInfo {
    NSLog(@"%s", __PRETTY_FUNCTION__);
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.viewController.showRVButton setEnabled:true];
    });
}

/**
 Called after a rewarded video has changed its availability to false.
 */
- (void)hasNoAvailableAd {
    NSLog(@"%s", __PRETTY_FUNCTION__);
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.viewController.showRVButton setEnabled:false];
    });
}

#pragma mark - Common Rewarded and Interstitial Delegate Functions

/**
 Called after a rewarded video has attempted to show but failed.
 Called after an interstitial has attempted to show but failed.
 @param error The reason for the error
 @param adInfo The info of the ad.
 */
- (void)didFailToShowWithError:(NSError *)error andAdInfo:(ISAdInfo *)adInfo {
    NSLog(@"%s, error:%@",__PRETTY_FUNCTION__,error);
    if ([adInfo.ad_unit isEqualToString:@"rewarded_video"]) {
        NSLog(@"rewarded_video");
    } else if ([adInfo.ad_unit isEqualToString:@"interstitial"]) {
       NSLog(@"interstitial");
   } else {
       NSLog(@"other format");
   }
}

/**
 Called after a rewarded video has been opened.
 Called after an interstitial has been opened.
 @param adInfo The info of the ad.
 */
- (void)didOpenWithAdInfo:(ISAdInfo *)adInfo {
    NSLog(@"%s",__PRETTY_FUNCTION__);
    if ([adInfo.ad_unit isEqualToString:@"rewarded_video"]) {
        NSLog(@"rewarded_video");
    } else if ([adInfo.ad_unit isEqualToString:@"interstitial"]) {
       NSLog(@"interstitial");
   } else {
       NSLog(@"other format");
   }
}

/**
 Called after a rewarded video has been dismissed.
 @param adInfo The info of the ad.
 */
- (void)didCloseWithAdInfo:(ISAdInfo *)adInfo {
    NSLog(@"%s", __PRETTY_FUNCTION__);
    NSString *message = [NSString stringWithFormat:@"You have been rewarded %@ %@", self.rvPlacementInfo.rewardAmount, self.rvPlacementInfo.rewardName];
    if ([adInfo.ad_unit isEqualToString:@"rewarded_video"]) {
        if (self.rvPlacementInfo) {
            UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Video Reward"
                                                                                     message:message
                                                                              preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *action = [UIAlertAction actionWithTitle:@"OK"
                                                             style:UIAlertActionStyleCancel
                                                           handler:nil];
            [alertController addAction:action];
            [self.viewController presentViewController:alertController
                               animated:YES
                             completion:nil];
            self.rvPlacementInfo = nil;
        }
        NSLog(@"rewarded_video");
    } else if ([adInfo.ad_unit isEqualToString:@"interstitial"]) {
        NSLog(@"interstitial");
    } else {
        NSLog(@"other format");
    }
}

#pragma mark - Interstitial Delegate Functions

/**
 Called after an interstitial has been clicked.
 @param adInfo The info of the ad.
 */
- (void)didClickWithAdInfo:(ISAdInfo *)adInfo {
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

/**
 Called after an interstitial has attempted to load but failed.
 @param error The reason for the error
 */
- (void)didFailToLoadWithError:(NSError *)error {
    NSLog(@"%s, error:%@",__PRETTY_FUNCTION__,error);
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.viewController.showISButton setEnabled:false];
    });
}

/**
 Called after an interstitial has been loaded
 @param adInfo The info of the ad.
 */
- (void)didLoadWithAdInfo:(ISAdInfo *)adInfo {
    NSLog(@"%s",__PRETTY_FUNCTION__);
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.viewController.showISButton setEnabled:true];
    });
}

- (void)didShowWithAdInfo:(ISAdInfo *)adInfo {
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

@end

@implementation ViewController

#pragma mark ViewLifecycle Functions

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.versionLabel.text = [NSString stringWithFormat:@"sdk version %@", [IronSource sdkVersion]];
    self.delegate = [[ViewControllerCallback alloc] initWithViewController:self];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    if (@available(iOS 14.0, *)) {
        [self usingATTConsentDialog];
    } else {
        [self setupIronSourceSdk];
    }
}

#pragma mark Private Functions
- (void)usingATTConsentDialog API_AVAILABLE(ios(14.0)) {
    dispatch_async(dispatch_get_main_queue(), ^{
        if ([ATTrackingManager trackingAuthorizationStatus] == ATTrackingManagerAuthorizationStatusNotDetermined) {
            [ATTrackingManager requestTrackingAuthorizationWithCompletionHandler:^(ATTrackingManagerAuthorizationStatus status) {
                switch (status) {
                    case ATTrackingManagerAuthorizationStatusAuthorized:
                    case ATTrackingManagerAuthorizationStatusDenied:
                    case ATTrackingManagerAuthorizationStatusNotDetermined:
                    case ATTrackingManagerAuthorizationStatusRestricted:
                        break;
                    default:
                        break;
                }
                [self setupIronSourceSdk];
            }];
        } else {
            [self setupIronSourceSdk];
        }
    });
}

- (void)setupIronSourceSdk {
    [ISIntegrationHelper validateIntegration];
    
    [IronSource setLevelPlayRewardedVideoDelegate:self.delegate];
    [IronSource setLevelPlayInterstitialDelegate:self.delegate];
    
    [IronSource initWithAppKey:APPKEY];
}

#pragma mark Interface Handling

- (IBAction)showRVButtonTapped:(id)sender {
    
    // After calling 'setRVDelegate' and 'initRVWithAppKey:withUserId'
    // you are ready to present an ad. You can supply a placement
    // by calling 'showRVWithPlacementName', or you can simply
    // call 'showRV'. In this case the SDK will use the default
    // placement one created for you.
    [IronSource showRewardedVideoWithViewController:self];
}

- (IBAction)showISButtonTapped:(id)sender {
    
    // This will present the Interstitial. Unlike Rewarded
    // Videos there are no placements.
    [IronSource showInterstitialWithViewController:self];
}

- (IBAction)loadISButtonTapped:(id)sender {
    // This will load the Interstitial. Unlike Rewarded
    // Videos there are no placements.
    [IronSource loadInterstitial];
}

@end
