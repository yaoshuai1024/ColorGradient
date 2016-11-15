//
//  ViewController.m
//  控制器视图颜色渐变
//
//  Created by yaoshuai on 2016/11/16.
//  Copyright © 2016年 ys. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CAGradientLayer *layer = [CAGradientLayer layer];
    layer.position = self.view.center;
    layer.bounds = self.view.bounds;
    
    CGColorRef color1 = [UIColor orangeColor].CGColor;
    CGColorRef color2 = [UIColor cyanColor].CGColor;
    CGColorRef color3 = [UIColor redColor].CGColor;
    CGColorRef color4 = [UIColor yellowColor].CGColor;
    CGColorRef color5 = [UIColor blueColor].CGColor;
    
    // layer的颜色集合
    layer.colors = @[(__bridge UIColor *)color1,(__bridge UIColor *)color2,(__bridge UIColor *)color3,(__bridge UIColor *)color4,(__bridge UIColor *)color5];
    
    // layer对应的颜色的位置，注意，一定要和颜色集合一一对应
    layer.locations = @[@0, @0.25, @0.5, @0.75, @1];
    
    [self.view.layer addSublayer:layer];
    
}

@end
