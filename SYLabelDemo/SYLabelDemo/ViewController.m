//
//  ViewController.m
//  SYLabelDemo
//
//  Created by whg on 17/1/12.
//  Copyright © 2017年 stonly. All rights reserved.
//

#import "ViewController.h"
#import "SYReadView.h"

@interface ViewController ()
@property (nonatomic, strong) SYReadView *readView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSStringEncoding gbkEncoding = CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000);
    NSString *path = [[NSBundle mainBundle] pathForResource:@"良诗一首" ofType:@"txt"];
    NSString *content = [NSString stringWithContentsOfFile:path encoding:gbkEncoding error:nil];

    //
    self.readView = [[SYReadView alloc] initWithFrame:CGRectMake(0.f, 64.f, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - 64) text:content];
    self.readView.backgroundColor = [UIColor lightGrayColor];
    
    self.readView.finishRoll = ^(NSInteger position){
        NSLog(@"%ld",position);
    };
    [self.view addSubview:self.readView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
