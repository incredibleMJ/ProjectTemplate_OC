//
//  MJBaseViewController.m
//  ProjectTemplate_OC
//
//  Created by Albert on 2017/12/11.
//  Copyright © 2017年 Albert. All rights reserved.
//

#import "MJBaseViewController.h"
#import "TestModel.h"

@interface MJBaseViewController ()

@end

@implementation MJBaseViewController

#pragma mark - Autorotate

- (BOOL)shouldAutorotate {
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return UIInterfaceOrientationPortrait;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    
    //    [self setNeedsStatusBarAppearanceUpdate];
    //    if (@available(iOS 11.0, *)) {
    //        [self setNeedsUpdateOfHomeIndicatorAutoHidden];
    //    }
}

#pragma mark - StatusBar

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleDefault;
}

- (BOOL)prefersStatusBarHidden {
    return NO;
}

#pragma mark - HomeIndicator

- (BOOL)prefersHomeIndicatorAutoHidden {
    return NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    //    [self setNeedsStatusBarAppearanceUpdate];
    //    if (@available(iOS 11.0, *)) {
    //        [self setNeedsUpdateOfHomeIndicatorAutoHidden];
    //    }
}

@end
