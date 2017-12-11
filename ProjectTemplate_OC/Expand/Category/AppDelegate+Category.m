//
//  AppDelegate+Category.m
//  BaseProject
//
//  Created by Albert on 16/3/14.
//  Copyright © 2016年 IncredibleMJ. All rights reserved.
//

#import "AppDelegate+Category.h"
#import <AFNetworkActivityIndicatorManager.h>

@implementation AppDelegate (Category)

- (void)initializeWithApplication:(UIApplication *)application{
    
    //    电池条显示网络活动
    [[AFNetworkActivityIndicatorManager sharedManager] setEnabled:YES];
    //    检测网络状态
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        NSLog(@"Reachability: %@", AFStringFromNetworkReachabilityStatus(status));
        switch (status) {
            case AFNetworkReachabilityStatusReachableViaWWAN:
            case AFNetworkReachabilityStatusReachableViaWiFi:
                self.onLine = YES;
                break;
            case AFNetworkReachabilityStatusNotReachable:
            default:
                self.onLine = NO;
                [self showErrorMsg:@"网络连接出错"];
                break;
        }
    }];
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
}

@end
