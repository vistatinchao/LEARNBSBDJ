//
//  UIView+BSExtension.m
//  LEARNBSBDJ
//
//  Created by mac on 2017/7/17.
//  Copyright © 2017年 United Network Services Ltd. of Shenzhen City. All rights reserved.
//

#import "UIView+BSExtension.h"

@implementation UIView (BSExtension)
/*重写set方法*/
- (void)setBs_x:(CGFloat)bs_x{
    CGRect frame = self.frame;
    frame.origin.x = bs_x;
    self.frame = frame;
}
- (void)setBs_y:(CGFloat)bs_y{
    CGRect frame = self.frame;
    frame.origin.y = bs_y;
    self.frame = frame;
}
- (void)setBs_width:(CGFloat)bs_width{
    CGRect frame = self.frame;
    frame.size.width = bs_width;
    self.frame = frame;
}
- (void)setBs_height:(CGFloat)bs_height{
    CGRect frame = self.frame;
    frame.size.height = bs_height;
    self.frame = frame;
}
- (void)setBs_size:(CGSize)bs_size{
    CGRect frame = self.frame;
    frame.size = bs_size;
    self.frame = frame;
}
- (void)setBs_centerX:(CGFloat)bs_centerX{
    CGPoint cent = self.center;
    cent.x = bs_centerX;
    self.center = cent;
}
- (void)setBs_centerY:(CGFloat)bs_centerY{
    CGPoint cent = self.center;
    cent.y = bs_centerY;
    self.center = cent;
}
/*重写get方法*/
- (CGFloat)bs_x{
    return self.frame.origin.x;
}

- (CGFloat)bs_y{
    return self.frame.origin.y;
}

- (CGFloat)bs_width{
    return self.frame.size.width;
}

- (CGFloat)bs_height{
    return self.frame.size.height;
}

- (CGSize)bs_size{
    return self.frame.size;
}

- (CGFloat)bs_centerX{
    return self.center.x;
}

- (CGFloat)bs_centerY{
    return self.center.y;
}





@end
