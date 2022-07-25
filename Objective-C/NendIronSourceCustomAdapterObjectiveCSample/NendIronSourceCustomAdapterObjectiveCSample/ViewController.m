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

@interface ViewController () <ISRewardedVideoDelegate ,ISInterstitialDelegate>

@property (weak, nonatomic) IBOutlet UIButton *showRVButton;
@property (weak, nonatomic) IBOutlet UIButton *showISButton;
@property (weak, nonatomic) IBOutlet UIButton *loadISButton;
@property (weak, nonatomic) IBOutlet UILabel  *versionLabel;

@property (nonatomic, strong) ISPlacementInfo   *rvPlacementInfo;

@end

@implementation ViewController

#pragma mark -
#pragma mark ViewLifecycle Functions

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.versionLabel.text = [NSString stringWithFormat:@"sdk version %@", [IronSource sdkVersion]];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    if (@available(iOS 14.0, *)) {
        [self usingATTConsentDialog];
    } else {
        [self setupIronSourceSdk];
    }
}

#pragma mark -
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
    
    [IronSource setRewardedVideoDelegate:self];
    [IronSource setInterstitialDelegate:self];
    
    [IronSource initWithAppKey:APPKEY];
}

#pragma mark -
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

#pragma mark - Rewarded Video Delegate Functions

// This method lets you know whether or not there is a video
// ready to be presented. It is only after this method is invoked
// with 'hasAvailableAds' set to 'YES' that you can should 'showRV'.
- (void)rewardedVideoHasChangedAvailability:(BOOL)available {
    NSLog(@"%s", __PRETTY_FUNCTION__);
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.showRVButton setEnabled:available];
    });
}

// This method gets invoked after the user has been rewarded.
- (void)didReceiveRewardForPlacement:(ISPlacementInfo *)placementInfo {
    NSLog(@"%s", __PRETTY_FUNCTION__);
    self.rvPlacementInfo = placementInfo;
}

// This method gets invoked when there is a problem playing the video.
// If it does happen, check out 'error' for more information and consult
// our knowledge center for help.
- (void)rewardedVideoDidFailToShowWithError:(NSError *)error {
    NSLog(@"%s, error:%@",__PRETTY_FUNCTION__,error);
}

// This method gets invoked when we take control, but before
// the video has started playing.
- (void)rewardedVideoDidOpen {
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

// This method gets invoked when we return controlback to your hands.
// We chose to notify you about rewards here and not in 'didReceiveRewardForPlacement'.
// This is because reward can occur in the middle of the video.
- (void)rewardedVideoDidClose {
    NSLog(@"%s", __PRETTY_FUNCTION__);
    if (self.rvPlacementInfo) {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Video Reward"
                                                                                 message:[NSString stringWithFormat:@"You have been rewarded %d %@", [self.rvPlacementInfo.rewardAmount intValue], self.rvPlacementInfo.rewardName]
                                                                          preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"OK"
                                                         style:UIAlertActionStyleCancel
                                                       handler:nil];
        [alertController addAction:action];
        [self presentViewController:alertController
                           animated:YES
                         completion:nil];
        self.rvPlacementInfo = nil;
    }
}

// This method gets invoked when the video has started playing.
- (void)rewardedVideoDidStart {
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

// This method gets invoked when the video has stopped playing.
- (void)rewardedVideoDidEnd {
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

// This method gets invoked after a video has been clicked
- (void)didClickRewardedVideo:(ISPlacementInfo *)placementInfo {
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

#pragma mark - Interstitial Delegate Functions

- (void)interstitialDidLoad {
    NSLog(@"%s",__PRETTY_FUNCTION__);
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.showISButton setEnabled:YES];
    });
}

- (void)interstitialDidFailToLoadWithError:(NSError *)error {
    NSLog(@"%s, error:%@",__PRETTY_FUNCTION__,error);
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.showISButton setEnabled:NO];
    });
}

- (void)interstitialDidOpen {
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

// The method will be called each time the Interstitial windows has opened successfully.
- (void)interstitialDidShow {
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

// This method gets invoked after a failed attempt to load Interstitial.
// If it does happen, check out 'error' for more information and consult our
// Knowledge center.
- (void)interstitialDidFailToShowWithError:(NSError *)error {
    NSLog(@"%s, error:%@",__PRETTY_FUNCTION__,error);
}

// This method will be called each time the user had clicked the Interstitial ad.
- (void)didClickInterstitial {
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

// This method get invoked after the Interstitial window had closed and control
// returns to your application.
- (void)interstitialDidClose {
    NSLog(@"%s",__PRETTY_FUNCTION__);
}


@end
