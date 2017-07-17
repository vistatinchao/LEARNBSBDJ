//
//  BSTabBar.m
//  LEARNBSBDJ
//
//  Created by mac on 2017/7/17.
//  Copyright © 2017年 United Network Services Ltd. of Shenzhen City. All rights reserved.
//

#import "BSTabBar.h"
@interface BSTabBar()
/**中间的➕号按钮*/
@property (nonatomic,weak) UIButton *addBtn;
@end
@implementation BSTabBar

#pragma mark - 初始化
+(instancetype)tabBar{
    return [[self alloc]init];
}

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        // 添加+按钮
        [self setupAddBtn];
    }
    return self;
}

#pragma mark - 添加中间的➕号按钮
- (void)setupAddBtn{
    UIButton *addBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self addSubview:addBtn];
    [addBtn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
    [addBtn setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
    addBtn.bs_size = addBtn.currentBackgroundImage.size;
    [addBtn addTarget:self action:@selector(addBtnClick) forControlEvents:UIControlEventTouchUpInside];
    self.addBtn = addBtn;

}
/**
 监听➕号按钮点击
 */
- (void)addBtnClick{
    BSLogFunc;
}

#pragma mark - 布局子控件
- (void)layoutSubviews{
    [super layoutSubviews];

    self.addBtn.bs_centerX = self.bs_width*0.5;
    self.addBtn.bs_y = 0;
    CGFloat itemW = self.bs_width/5.0;
    CGFloat itemH = self.bs_height;
    CGFloat index = 0;
    for (UIView *tabBarButton in self.subviews) {
        if ([tabBarButton isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            if (index==2) {
                index++;
            }
            tabBarButton.bs_x = index*itemW;
            tabBarButton.bs_y = 0;
            tabBarButton.bs_width = itemW;
            tabBarButton.bs_height = itemH;
            index++;
        }
    }
}

@end
