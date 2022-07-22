//
//  ISNendCustomAdapter.m
//  ISNendCustomAdapter
//
//  Copyright(c) FAN Communications, Inc. All Rights Reserved
//

#import "ISNendCustomAdapter.h"
#import "IronSource/IronSource.h"
#import "NendAd/NendAd.h"

static NSString * const ISNendSdkVersion = @"7.3.0";
static NSString * const ISNendAdapterVersion = @"7.3.0.0";
static NSString * const ISNendMediationName = @"ironSource_CustomEvent";

@implementation ISNendCustomAdapter

- (void)init:(ISAdData *)adData delegate:(id<ISNetworkInitializationDelegate>)delegate {
    if (adData.configuration) {
        // init success
        [delegate onInitDidSucceed];
    } else {
        [delegate onInitDidFailWithErrorCode:ISAdapterErrorMissingParams
                                errorMessage:@"[Nend] Configuration data was not found. Please check that ad data is registered in dashboard."];
    }
}

- (NSString *)networkSDKVersion {
    return ISNendSdkVersion;
}

- (NSString *)adapterVersion {
    return ISNendAdapterVersion;
}

- (NSString *)mediationName {
    return ISNendMediationName;
}

- (void)setAdapterDebug:(BOOL)adapterDebug {
    if (adapterDebug) {
        [NADLogger setLogLevel:NADLogLevelDebug];
    } else {
        [NADLogger setLogLevel:NADLogLevelOff];
    }
}

@end
