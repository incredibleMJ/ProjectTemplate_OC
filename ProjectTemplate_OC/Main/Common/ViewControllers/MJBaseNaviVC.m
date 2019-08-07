//
//  MJBaseNaviVC.m
//  TT_OC
//
//  Created by Albert on 2019/8/7.
//  Copyright © 2019 PandaABC. All rights reserved.
//

#import "MJBaseNaviVC.h"

@implementation MJBaseNaviVC

#pragma mark - Autorotate

- (BOOL)shouldAutorotate {
    return self.topViewController.shouldAutorotate;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return self.topViewController.supportedInterfaceOrientations;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return self.topViewController.preferredInterfaceOrientationForPresentation;
}

#pragma mark - StatusBar

- (UIViewController *)childViewControllerForStatusBarHidden {
    return self.topViewController;
}

- (UIViewController *)childViewControllerForStatusBarStyle {
    return self.topViewController;
}

#pragma mark - HomeIndicator

- (BOOL)prefersHomeIndicatorAutoHidden {
    return self.topViewController.prefersHomeIndicatorAutoHidden;
}

@end
