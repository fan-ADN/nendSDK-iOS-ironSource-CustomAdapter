//
//  ISNendCustomAdapter.h
//  ISNendCustomAdapter
//
//  Copyright(c) FAN Communications, Inc. All Rights Reserved
//

#import <Foundation/Foundation.h>
#import "IronSource/ISBaseNetworkAdapter.h"
// In this header, you should import all the public headers of your framework using statements like #import <ISNendCustomAdapter/PublicHeader.h>

static NSString * const ISNendCustomAdapterApiKey = @"apikey";
static NSString * const ISNendCustomAdapterSpotId = @"spotid";
static NSString * const ISNendCustomAdapterInstanceName = @"instanceName";

@interface ISNendCustomAdapter : ISBaseNetworkAdapter

- (NSString *)mediationName;

@end
