//
//  WTThreadLogVC.m
//  TotalDemo
//
//  Created by tyler on 4/9/19.
//  Copyright © 2019 wzt. All rights reserved.
//

#import "WTThreadLogVC.h"
#import "BSBacktraceLogger.h"

@interface WTThreadLogVC ()

@end

@implementation WTThreadLogVC

- (void)viewDidLoad {
    [super viewDidLoad];
    //
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        
        NSLog(@"%@",[BSBacktraceLogger bs_backtraceOfCurrentThread]); //打印当前线程
        //NSLog(@"%@",[BSBacktraceLogger bs_backtraceOfMainThread]);    //打印主线程调用栈
        //NSLog(@"%@",[BSBacktraceLogger bs_backtraceOfAllThread]);       //打印所有线程
        //BSLOG_MAIN  // 打印主线程调用栈， BSLOG 打印当前线程，BSLOG_ALL 打印所有线程
        // 调用 [BSBacktraceLogger bs_backtraceOfCurrentThread] 这一系列的方法可以获取字符串，然后选择上传服务器或者其他处理。
    });
    [self foo];
    
}

- (void)foo {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [self bar];
    });
    
}

- (void)bar {
    while (true) {
        ;
    }
}





@end
