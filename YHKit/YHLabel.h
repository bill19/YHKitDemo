//
//  YHLabel.h
//  YHKitLib
//
//  Created by HaoSun on 2017/10/12.
//  Copyright © 2017年 YHKIT. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_OPTIONS(NSUInteger, YHLabelShowStyle) {
    YHLabelStyleNormal       = 0,
    YHLabelStyleOther        = 1 << 0,
};

@interface YHLabel : UIView

/**
 标题 - 换个颜色字体啥的都没问题
 */
@property (nonatomic, weak) UILabel *titleLab;
/**
 内容 - 换个颜色字体啥的
 */
@property (nonatomic, weak) UILabel *contentLab;

/**
 样式类型
 */
@property (nonatomic, assign) YHLabelShowStyle labelStyle;

@end
