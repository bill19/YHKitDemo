//
//  YHLabel.m
//  YHKitLib
//
//  Created by HaoSun on 2017/10/12.
//  Copyright © 2017年 YHKIT. All rights reserved.
//

#import "YHLabel.h"
//#import "Masonry.h"
@interface YHLabel ()

@end

@implementation YHLabel

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setupSubViews];
        [self setupLayout];
    }
    return self;
}


- (void)setupSubViews {

    UILabel *titleLab = [[UILabel alloc] init];
    titleLab.font = [UIFont systemFontOfSize:14];
    titleLab.text = @"";
    _titleLab = titleLab;
    [self addSubview:_titleLab];

    UILabel *contentLab = [[UILabel alloc] init];
    contentLab.font = [UIFont systemFontOfSize:14];
    contentLab.numberOfLines = 0;
    contentLab.text = @"";
    _contentLab = contentLab;
    [self addSubview:_contentLab];

}


- (void)setupLayout {
    [_titleLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).offset(0.0f);
        make.top.equalTo(self.mas_top).offset(0.0f);
        make.bottom.equalTo(self.mas_bottom).offset(0.0f);
    }];
    [_contentLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_titleLab.mas_right).offset(0.0f);
        make.top.equalTo(self.mas_top).offset(0.0f);
        make.right.equalTo(self.mas_right).offset(0.0f);
        make.bottom.equalTo(self.mas_bottom).offset(0.0f);
    }];
    [_contentLab setContentCompressionResistancePriority:200 forAxis:UILayoutConstraintAxisHorizontal];
    [_contentLab setContentHuggingPriority:200 forAxis:UILayoutConstraintAxisHorizontal];
}

/**
 重写这个TitleLabel

 @param titleLab <#titleLab description#>
 */
- (void)setTitleLab:(UILabel *)titleLab {
    self.titleLab = titleLab;
}

/**
 重写内容

 @param contentLab <#contentLab description#>
 */
- (void)setContentLab:(UILabel *)contentLab {
    self.contentLab = contentLab;
}
@end
