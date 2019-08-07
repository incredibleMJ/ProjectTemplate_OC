//
//  MJBaseTabVC.m
//  TT_OC
//
//  Created by Albert on 2019/8/7.
//  Copyright © 2019 PandaABC. All rights reserved.
//

#import "MJBaseTabVC.h"

@implementation MJBaseTabVC

#pragma mark - Autorotate

- (BOOL)shouldAutorotate {
    return self.selectedViewController.shouldAutorotate;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return self.selectedViewController.supportedInterfaceOrientations;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return [self.selectedViewController preferredInterfaceOrientationForPresentation];
}

#pragma mark - StatusBar

- (UIViewController *)childViewControllerForStatusBarStyle {
    return self.selectedViewController;
}

- (UIViewController *)childViewControllerForStatusBarHidden {
    return self.selectedViewController;
}

#pragma mark - HomeIndicator

- (BOOL)prefersHomeIndicatorAutoHidden {
    return self.selectedViewController.prefersHomeIndicatorAutoHidden;
}

@end
