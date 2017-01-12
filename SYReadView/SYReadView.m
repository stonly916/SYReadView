//
//  SYReadView.m
//  DoReading
//
//  Created by whg on 17/1/9.
//  Copyright © 2017年 ForHappy. All rights reserved.
//

#import "SYReadView.h"

@interface SYReadView()

@property (nonatomic, copy) NSString *bookContent;

@end

@implementation SYReadView

- (instancetype)initWithFrame:(CGRect)frame text:(NSString *)text
{
    self = [super initWithFrame:frame];
    if (self) {
        frame.size.height -= 4.5f;
        self.bookSetter = [[SYReadSet alloc] initWithString:text inSize:frame.size];
        [self createUI];
    }
    return self;
}

- (void)createUI
{
    self.backgroundColor = [UIColor whiteColor];
    self.numberOfLines = 0;
    
    self.userInteractionEnabled = YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapClick:)];
    tap.numberOfTouchesRequired = 1;
    [self addGestureRecognizer:tap];
    
    //初始页面
    [self bookLabelShowNextPage];
}

- (void)rollPageToPostion:(NSInteger)position
{
    NSAttributedString *attr = [self.bookSetter stringWithPosition:position direction:SYReadNext];
    [self bookFinishRollWithAttrString:attr];
}

- (void)rollPageToPercent:(CGFloat)percent
{
    NSAttributedString *attr = [self.bookSetter rollToRate:percent];
    [self bookFinishRollWithAttrString:attr];
}

#pragma mark - UIGesture
- (void)tapClick:(UITapGestureRecognizer *)tap
{
    CGPoint point = [tap locationInView:self];
    if (tap.state == UIGestureRecognizerStateEnded) {
        if (point.x >= self.frame.size.width/2) {
            [self bookLabelShowNextPage];
        }else {
            [self bookLabelShowLastPage];
        }
    }
}

#pragma mark - 使文字顶端对齐
- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines {
    bounds = [super textRectForBounds:bounds limitedToNumberOfLines:numberOfLines];
    bounds.origin.y = 5.5f;
    return bounds;
}

-(void)drawTextInRect:(CGRect)rect
{
    rect = [self textRectForBounds:rect limitedToNumberOfLines:0];
    [super drawTextInRect:rect];
}

#pragma mark - 翻页
- (void)bookLabelShowNextPage
{
    [self bookFinishRollWithAttrString:self.bookSetter.nextString];
}

- (void)bookLabelShowLastPage
{
    [self bookFinishRollWithAttrString:self.bookSetter.lastString];
}

- (void)bookFinishRollWithAttrString:(NSAttributedString *)attr
{
    if (attr.length) {
        self.attributedText = attr;
    }
    if (self.finishRoll) {
        self.finishRoll(self.bookSetter.position);
    }
}

@end
