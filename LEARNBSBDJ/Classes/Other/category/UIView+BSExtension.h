//
//  UIView+BSExtension.h
//  LEARNBSBDJ
//
//  Created by mac on 2017/7/17.
//  Copyright © 2017年 United Network Services Ltd. of Shenzhen City. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (BSExtension)
/**水平坐标x*/
@property (nonatomic,assign) CGFloat bs_x;
/**水平坐标y*/
@property (nonatomic,assign) CGFloat bs_y;
/**宽度*/
@property (nonatomic,assign) CGFloat bs_width;
/**高度*/
@property (nonatomic,assign) CGFloat bs_height;
/**大小尺寸*/
@property (nonatomic,assign) CGSize bs_size;
/**中心点坐标X*/
@property (nonatomic,assign) CGFloat bs_centerX;
/**中心点坐标Y*/
@property (nonatomic,assign) CGFloat bs_centerY;
@end
