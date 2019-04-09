//
//  TestVC.m
//  TotalDemo
//
//  Created by ocean on 2019/1/5.
//  Copyright © 2019年 wzt. All rights reserved.
//

#import "TestVC.h"

@interface TestVC ()

@end

@implementation TestVC

- (void)viewDidLoad {
    [super viewDidLoad];
    //
    
    int array[10];
    for (int i=0; i<10; i++) {
        array[i] = i;
    }
    int *p = array;
    int *q = &array[2];
    
    printf("q-p = %d \n", q-p);
    printf("array[q-p] = %d \n", array[q-p]);
    
}







@end
