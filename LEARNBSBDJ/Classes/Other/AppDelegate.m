//
//  AppDelegate.m
//  LEARNBSBDJ
//
//  Created by mac on 2017/7/14.
//  Copyright © 2017年 United Network Services Ltd. of Shenzhen City. All rights reserved.
//

#import "AppDelegate.h"
#import "BSTabBarController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self initWindow];
    return YES;
}

- (void)initWindow{
    self.window = [[UIWindow alloc]initWithFrame:BS_ScreenF];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    self.window.rootViewController = [[BSTabBarController alloc]init];
}


@end
