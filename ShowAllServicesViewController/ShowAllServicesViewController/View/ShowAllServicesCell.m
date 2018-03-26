//
//  ShowAllServicesCell.m
//  ShowAllServicesViewController
//
//  Created by 何松泽 on 2018/3/26.
//  Copyright © 2018年 HSZ. All rights reserved.
//

#import "ShowAllServicesCell.h"

@interface ShowAllServicesCell()

@property (nonatomic, strong) UIImageView *icon;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIButton *actionBtn;

@end

@implementation ShowAllServicesCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setUpUI];
    }
    return self;
}

- (void)setUpUI {
    CGRect rect = CGRectZero;
    rect.size.width = self.frame.size.width/3;
    rect.size.height = rect.size.width;
    rect.origin.x = self.frame.size.width/3;
    rect.origin.y = (self.frame.size.height - rect.size.height - 20)/2;//20代表间距加label高度
    
    self.icon = [[UIImageView alloc] initWithFrame:rect];
    [self addSubview:self.icon];
    
    rect.size.width = self.frame.size.width;
    rect.size.height = 15.f;
    rect.origin.y = CGRectGetMaxY(self.icon.frame) + 5;
    self.titleLabel = [[UILabel alloc] initWithFrame:rect];
    self.titleLabel.font = [UIFont systemFontOfSize:8.f];
    [self addSubview:self.titleLabel];
    
}

- (void) setCellWithModel:(ShowAllServicesModel *)model {
    [self.icon setImage:[UIImage imageNamed:@"logo57"]];
    [self.titleLabel setText:@"海外公司注册"];
}

@end











