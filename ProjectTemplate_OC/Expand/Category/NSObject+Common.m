//
//  NSObject+Common.m
//  BaseProject
//
//  Created by Albert on 16/3/14.
//  Copyright © 2016年 IncredibleMJ. All rights reserved.
//

#import "NSObject+Common.h"

#define kToastDuration     2

@implementation NSObject (Common)

//显示失败提示
- (void)showErrorMsg:(NSObject *)msg{
    [self hideProgress];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:[self currentView] animated:YES];
    hud.mode = MBProgressHUDModeText;
    hud.label.text = msg.description;
    [hud hideAnimated:YES afterDelay:kToastDuration];
}

//显示成功提示
- (void)showSuccessMsg:(NSObject *)msg{
    [self hideProgress];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:[self currentView] animated:YES];
    hud.mode = MBProgressHUDModeText;
    hud.label.text = msg.description;
    [hud hideAnimated:YES afterDelay:kToastDuration];
}

//显示忙
- (void)showProgress{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:[self currentView] animated:YES];
    [hud hideAnimated:YES afterDelay:kToastDuration];
}

//隐藏提示
- (void)hideProgress{
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated"
    [MBProgressHUD hideAllHUDsForView:[self currentView] animated:YES];
#pragma clang diagnostic pop
    
}

- (UIView *)currentView{
    UIViewController *controller = [kWindow rootViewController];
    
    if (!controller) {
        return [UIApplication sharedApplication].keyWindow;
    }
    
    if ([controller isKindOfClass:[UITabBarController class]]) {
        controller = [(UITabBarController *)controller selectedViewController];
    }else if([controller isKindOfClass:[UINavigationController class]]) {
        controller = [(UINavigationController *)controller visibleViewController];
    }else{
        return [UIApplication sharedApplication].keyWindow;
    }
    
    return controller.view;
}

@end
