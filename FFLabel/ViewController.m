//
//  ViewController.m
//  FFLabel
//
//  Created by 谢帆 on 2020/5/20.
//  Copyright © 2020 谢帆. All rights reserved.
//

#import "ViewController.h"
#import "FFLabel.h"

@interface ViewController ()

@property (nonatomic, strong) FFLabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.label];
    
}

- (FFLabel *)label {
    if (!_label) {
        _label = [[FFLabel alloc] initWithFrame:CGRectMake(0.f, 100.f, 100.f, 100.f)];
        _label.text = @"测试小神仙哇哈哈哈哈";
    }
    return _label;
}


@end
