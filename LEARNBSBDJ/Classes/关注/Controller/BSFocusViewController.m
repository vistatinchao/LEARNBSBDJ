//
//  BSFocusViewController.m
//  LEARNBSBDJ
//
//  Created by mac on 2017/7/17.
//  Copyright © 2017年 United Network Services Ltd. of Shenzhen City. All rights reserved.
//

#import "BSFocusViewController.h"

@interface BSFocusViewController ()

@end

@implementation BSFocusViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNavBar];
}

#pragma mark - 设置导航栏
- (void)setNavBar{

    self.navigationItem.leftBarButtonItem = [UIBarButtonItem barButtonItemWithTarget:self action:@selector(leftNavBarBtnClick) normalImage:@"friendsRecommentIcon" highLightenImage:@"friendsRecommentIcon-click"];
    self.navigationItem.title = @"我的关注";
    self.view.backgroundColor = BSGlobalColor;
}

- (void)leftNavBarBtnClick{
    BSLogFunc;
}

@end
