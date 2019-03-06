//
//  WTGuidePage2VC.m
//  TotalDemo
//
//  Created by ocean on 3/6/19.
//  Copyright © 2019 wzt. All rights reserved.
//

#import "WTGuidePage2VC.h"

@interface WTGuidePage2VC ()

@end

@implementation WTGuidePage2VC

- (void)viewDidLoad {
    [super viewDidLoad];
    //
    
    [self initUI];
}

-(void)initUI {
    
    UILabel *label = [IProUtil commonLab:iFont(15) color:iColor(0x00, 0x00, 0x00, 1.0)];
    label.text = @"这是第二个界面";
    [self.view addSubview:label];
    
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(@0);
    }];
}

@end
