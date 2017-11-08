//
//  ViewController.m
//  LayoutHuggingPriority
//
//  Created by 花田半亩 on 2017/11/8.
//  Copyright © 2017年 朱彬. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.label1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.top.mas_equalTo(400);
        make.height.mas_equalTo(18);
    }];
    
    [self.label2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.label1.mas_right);
        make.top.mas_equalTo(self.label1);
        make.right.mas_equalTo(0);
        make.height.mas_equalTo(18);
    }];
    
    [self.label1 setContentHuggingPriority:UILayoutPriorityDefaultHigh forAxis:UILayoutConstraintAxisHorizontal];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
