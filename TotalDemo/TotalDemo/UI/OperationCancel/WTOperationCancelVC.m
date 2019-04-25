//
//  WTOperationCancelVC.m
//  TotalDemo
//
//  Created by tyler on 4/17/19.
//  Copyright © 2019 wzt. All rights reserved.
//

#import "WTOperationCancelVC.h"

@interface WTOperationCancelVC ()

@end

@implementation WTOperationCancelVC

- (void)viewDidLoad {
    [super viewDidLoad];
    //
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self gcdBlockCancel];
}


- (void)gcdBlockCancel{
    
    dispatch_queue_t queue = dispatch_queue_create("com.gcdtest.www", DISPATCH_QUEUE_CONCURRENT);
    
    dispatch_block_t block1 = dispatch_block_create(0, ^{
        sleep(5);
        NSLog(@"block1 %@",[NSThread currentThread]);
    });
    
    dispatch_block_t block2 = dispatch_block_create(0, ^{
        NSLog(@"block2 %@",[NSThread currentThread]);
    });
    
    dispatch_block_t block3 = dispatch_block_create(0, ^{
        NSLog(@"block3 %@",[NSThread currentThread]);
    });
    
    dispatch_async(queue, block1);
    dispatch_async(queue, block2);
    dispatch_async(queue, block3);
    dispatch_block_cancel(block3);
}






@end
