//
//  baseViewController.m
//  myDemo
//
//  Created by 新能源 on 2017/3/30.
//  Copyright © 2017年 lzy. All rights reserved.
//

#import "baseViewController.h"
#define WIDTH [UIScreen mainScreen].bounds.size.width
#define HEIGHT [UIScreen mainScreen].bounds.size.height
@interface baseViewController ()

@end

@implementation baseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = YES;
    //菜单按钮
    UIButton * titleButton = [UIButton buttonWithType:UIButtonTypeCustom];
    titleButton.frame = CGRectMake(20, 30, 60, 30);
    titleButton.backgroundColor = [UIColor redColor];
    [titleButton addTarget:self action:@selector(clickLeftBarButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:titleButton];
    
    UIButton * shaxin = [UIButton buttonWithType:UIButtonTypeCustom];
    shaxin.frame = CGRectMake(300, 30, 60, 30);
    shaxin.backgroundColor = [UIColor greenColor];
    [shaxin setTitle:@"刷新" forState:UIControlStateNormal];
    [shaxin addTarget:self action:@selector(shaxin:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:shaxin];
    
    UIView * view = [[UIView alloc]init];
    view.frame = CGRectMake(90, 30, WIDTH-80-90, 30);
    view.tintColor = [UIColor redColor];
    [self.view addSubview:view];
    
    UIButton * titleViewBtn = [[UIButton alloc]init];
    titleViewBtn.frame = CGRectMake(0, 0, WIDTH-80-95, 30);
    titleViewBtn.backgroundColor = [UIColor colorWithRed:140/255.0 green:0/255.0 blue:0/255.0 alpha:1];
    titleViewBtn.tintColor = [UIColor whiteColor];
    [titleViewBtn addTarget:self action:@selector(SearchBtn:) forControlEvents:UIControlEventTouchUpInside];
    [view addSubview:titleViewBtn];
    
    UILabel * lab = [[UILabel alloc]init];
    lab.text = @"搜索服务网点";
    lab.textColor = [ UIColor whiteColor];
    lab.textAlignment = NSTextAlignmentLeft;
    lab.frame = CGRectMake(55, 0, view.bounds.size.width-75, 30);
    lab.font = [UIFont systemFontOfSize:12];
    [titleViewBtn addSubview:lab];
}
- (void)shaxin:(UIButton *)btn
{
    
}
#pragma mark ---搜索
- (void)SearchBtn:(UIButton *)button
{
    
}
- (void)clickLeftBarButton
{
    //找到对应的_rightView
    UIView *view = self.navigationController.view.superview;
    
    [UIView animateWithDuration:0.5 animations:^{
        view.frame = CGRectMake(250, 0, 375, 667);
    }];
}



@end
