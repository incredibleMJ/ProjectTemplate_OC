//
//  Constants.h
//  BaseProject
//
//  Created by Albert on 16/3/14.
//  Copyright © 2016年 IncredibleMJ. All rights reserved.
//

#ifndef Constants_h
#define Constants_h

#pragma mark - size相关

#define kWindowW    [UIScreen mainScreen].bounds.size.width
#define kWindowH   [UIScreen mainScreen].bounds.size.height
#define kStatusBarHeight [UIApplication sharedApplication].statusBarFrame.size.height

#pragma mark - 颜色相关

#define kRGBColor(R,G,B)        [UIColor colorWithRed:(R)/255.0 green:(G)/255.0 blue:(B)/255.0 alpha:1.0]

#pragma mark - 其他

#define kAppDelegate ((AppDelegate*)([UIApplication sharedApplication].delegate))
#define kWindow kAppDelegate.window

#endif /* Constants_h */
