//
//  UIBarButtonItem+BSExtension.m
//  LEARNBSBDJ
//
//  Created by mac on 2017/7/18.
//  Copyright © 2017年 United Network Services Ltd. of Shenzhen City. All rights reserved.
//

#import "UIBarButtonItem+BSExtension.h"

@implementation UIBarButtonItem (BSExtension)
+(instancetype)barButtonItemWithTarget:(id)target action:(SEL)action normalImage:(NSString *)normalImage highLightenImage:(NSString *)highLightenImage{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundImage:[UIImage imageNamed:normalImage] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:highLightenImage] forState:UIControlStateHighlighted];
    btn.bs_size = btn.currentBackgroundImage.size;
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[self alloc]initWithCustomView:btn];
}
@end
