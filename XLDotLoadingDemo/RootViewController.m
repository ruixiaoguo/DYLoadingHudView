//
//  RootViewController.m
//  XLDotLoadingDemo
//
//  Created by GRX on 2022/7/5.
//  Copyright © 2022 Apple. All rights reserved.
//

#import "RootViewController.h"
#import "SparkHudView.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *tagBtn = [[UIButton alloc]init];
    tagBtn.backgroundColor = [UIColor orangeColor];
    tagBtn.layer.cornerRadius = 25;
    tagBtn.frame = CGRectMake(110, 100, 200, 50);
    [tagBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [tagBtn setTitle:@"Show" forState:UIControlStateNormal];
    [self.view addSubview:tagBtn];
    [tagBtn addTarget:self action:@selector(tagBtnClick) forControlEvents:UIControlEventTouchUpInside];
}

-(void)tagBtnClick{
    [SparkHudView show];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [SparkHudView hide];
    });
}

@end
