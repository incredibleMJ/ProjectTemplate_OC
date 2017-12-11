//
//  AppDelegate.h
//  ProjectTemplate_OC
//
//  Created by Albert on 2017/12/1.
//  Copyright © 2017年 Albert. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property(nonatomic,getter=isOnLine) BOOL onLine; //网络状态

@end

