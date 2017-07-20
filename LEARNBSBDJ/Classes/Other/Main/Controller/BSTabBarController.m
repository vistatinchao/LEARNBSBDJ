//
//  BSTabBarController.m
//  LEARNBSBDJ
//
//  Created by mac on 2017/7/17.
//  Copyright © 2017年 United Network Services Ltd. of Shenzhen City. All rights reserved.
//

#import "BSTabBarController.h"
#import "BSNavigationController.h"
#import "BSEssenceViewController.h"
#import "BSNewViewController.h"
#import "BSFocusViewController.h"
#import "BSMeViewController.h"

#import "BSTabBar.h"
@interface BSTabBarController ()

@end

@implementation BSTabBarController

+ (void)initialize{
    // 通过appearance统一设置所有UITabBarItem的文字属性
    // 后面带有UI_APPEARANCE_SELECTOR的方法, 都可以通过appearance对象来统一设置
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    attrs[NSForegroundColorAttributeName] = [UIColor grayColor];

    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSFontAttributeName] = attrs[NSFontAttributeName];
    selectedAttrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];

    UITabBarItem *item = [UITabBarItem appearance];
    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];


}

- (void)viewDidLoad {
    [super viewDidLoad];

    BSEssenceViewController *essenceVc = [[BSEssenceViewController alloc]init];
    [self addChildViewController:essenceVc title:@"精华" normalImage:@"tabBar_essence_icon" selectedImage:@"tabBar_essence_click_icon"];

    BSNewViewController *newVc = [[BSNewViewController alloc]init];
    [self addChildViewController:newVc title:@"新帖" normalImage:@"tabBar_new_icon" selectedImage:@"tabBar_new_click_icon"];

    BSFocusViewController *focusVc = [[BSFocusViewController alloc]init];
    [self addChildViewController:focusVc title:@"关注" normalImage:@"tabBar_friendTrends_icon" selectedImage:@"tabBar_friendTrends_click_icon"];

    BSMeViewController *meVc = [[BSMeViewController alloc]init];
    [self addChildViewController:meVc title:@"我" normalImage:@"tabBar_me_icon" selectedImage:@"tabBar_me_click_icon"];
    
    BSTabBar *tabBar = [BSTabBar tabBar];
    [self setValue:tabBar forKey:@"tabBar"];//更换系统的tabbar
    
    //self.tabBar.tintColor = [UIColor blackColor];//设置tabbar选中时的item颜色
}

#pragma mark - 添加子控制器
- (void)addChildViewController:(UIViewController *)controller title:(NSString *)title normalImage:(NSString *)normalImage selectedImage:(NSString *)selectedImage{
    controller.tabBarItem.title = title;
    controller.tabBarItem.image = [UIImage imageNamed:normalImage];
    controller.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    BSNavigationController *nvc = [[BSNavigationController alloc]initWithRootViewController:controller];
    [self addChildViewController:nvc];
}



@end
