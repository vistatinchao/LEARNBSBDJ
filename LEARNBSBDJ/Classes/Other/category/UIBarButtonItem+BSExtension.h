//
//  UIBarButtonItem+BSExtension.h
//  LEARNBSBDJ
//
//  Created by mac on 2017/7/18.
//  Copyright © 2017年 United Network Services Ltd. of Shenzhen City. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (BSExtension)

+(instancetype)barButtonItemWithTarget:(id)target action:(SEL)action normalImage:(NSString *)normalImage highLightenImage:(NSString *)highLightenImage;

@end
