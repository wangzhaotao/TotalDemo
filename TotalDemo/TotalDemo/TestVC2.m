//
//  TestVC2.m
//  TotalDemo
//
//  Created by wztMac on 2019/5/12.
//  Copyright © 2019 wzt. All rights reserved.
//

#import "TestVC2.h"
#import "TestVC.h"

@interface TestVC2 ()<TestVCDelegate>
@property (nonatomic, strong) TestVC *vc;

@end

@implementation TestVC2

- (void)viewDidLoad {
    [super viewDidLoad];
    //
    
    UIButton *btn = [[UIButton alloc]init];
    [btn setTitle:@"Test Btn" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(clickBtnActon:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    btn.layer.borderWidth = 1.0;
    btn.layer.borderColor = [UIColor blackColor].CGColor;
    btn.frame = CGRectMake(100, 100, 100, 45);
    
    //
    _vc = [[TestVC alloc]init];
    _vc.delegate = self;
}

-(void)clickBtnActon:(UIButton*)btn {
    
    [_vc testMethodButtonAction];
}

-(void)testMethod {
    
    NSLog(@"test");
}



@end
