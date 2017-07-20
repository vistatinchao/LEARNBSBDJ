//
//  BSEssenceViewController.m
//  LEARNBSBDJ
//
//  Created by mac on 2017/7/17.
//  Copyright © 2017年 United Network Services Ltd. of Shenzhen City. All rights reserved.
//

#import "BSEssenceViewController.h"

@interface BSEssenceViewController ()

@end

@implementation BSEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setNavBar];
}

#pragma mark - 设置导航栏
- (void)setNavBar{

    self.navigationItem.leftBarButtonItem = [UIBarButtonItem barButtonItemWithTarget:self action:@selector(leftNavBarBtnClick) normalImage:@"MainTagSubIcon" highLightenImage:@"MainTagSubIconClick"];
    self.navigationItem.titleView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"MainTitle"]];
    self.view.backgroundColor = BSGlobalColor;
}

- (void)leftNavBarBtnClick{
    BSLogFunc;
}

@end
