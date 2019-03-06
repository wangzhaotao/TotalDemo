//
//  WTGuidePage4VC.m
//  TotalDemo
//
//  Created by ocean on 3/6/19.
//  Copyright © 2019 wzt. All rights reserved.
//

#import "WTGuidePage4VC.h"

@interface WTGuidePage4VC ()

@end

@implementation WTGuidePage4VC

- (void)viewDidLoad {
    [super viewDidLoad];
    //
    
    [self initUI];
}

-(void)initUI {
    
    UILabel *label = [IProUtil commonLab:iFont(15) color:iColor(0x00, 0x00, 0x00, 1.0)];
    label.text = @"这是第四个界面";
    [self.view addSubview:label];
    
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(@0);
    }];
}

@end
