//
//  SYReadView.h
//  DoReading
//
//  Created by whg on 17/1/9.
//  Copyright © 2017年 ForHappy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SYReadSet.h"

@interface SYReadView : UILabel

@property (nonatomic, strong) SYReadSet *bookSetter;

@property (nonatomic, copy) void(^finishRoll)(NSInteger position);

- (instancetype)initWithFrame:(CGRect)frame text:(NSString *)text;

- (void)rollPageToPostion:(NSInteger)position;
- (void)rollPageToPercent:(CGFloat)percent;

@end
