//
//  BSMeViewController.m
//  LEARNBSBDJ
//
//  Created by mac on 2017/7/17.
//  Copyright © 2017年 United Network Services Ltd. of Shenzhen City. All rights reserved.
//

#import "BSMeViewController.h"

@interface BSMeViewController ()

@end

@implementation BSMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNavBar];

}

- (void)setNavBar{
    self.view.backgroundColor = BSGlobalColor;
    self.title = @"我的";
    UIBarButtonItem *setModeItem = [UIBarButtonItem barButtonItemWithTarget:self action:@selector(setModeItemClick) normalImage:@"mine-setting-icon" highLightenImage:@"mine-setting-icon-click"];
    UIBarButtonItem *nightModeItem = [UIBarButtonItem barButtonItemWithTarget:self action:@selector(nightModeItemClick) normalImage:@"mine-moon-icon" highLightenImage:@"mine-moon-icon-click"];
    self.navigationItem.rightBarButtonItems = @[setModeItem,nightModeItem];
}

- (void)setModeItemClick{
    BSLogFunc;
}

- (void)nightModeItemClick{
    BSLogFunc;
}

@end
