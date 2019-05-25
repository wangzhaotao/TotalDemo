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
@property (nonatomic, copy) NSString *test;

@end

@implementation TestVC2

- (void)viewDidLoad {
    [super viewDidLoad];
    //
    
    dispatch_block_t block = dispatch_block_create(0, ^{
        self.test = @"This is test.";
        NSLog(@"test: %@", self.test);
    });
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), block);
    
    //    dispatch_sync(dispatch_get_main_queue(), ^{
    //        NSLog(@"这回是一个死锁吗？？？");
    //    });
    
    //UDID 141171e0e0713c041c8884811742b96869939639
    //[self.view addSubview:nil];
    
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
