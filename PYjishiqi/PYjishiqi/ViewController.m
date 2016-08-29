//
//  ViewController.m
//  PYjishiqi
//
//  Created by Apple on 16/8/23.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSInteger _count;
}
@property(nonatomic,strong)UIButton *PushBtn;

@property(nonatomic,strong)UIButton *NSTimerbtn;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.NSTimerbtn = [UIButton buttonWithType:(UIButtonTypeSystem)];
    self.NSTimerbtn.frame = CGRectMake(100, 100, 100, 30);
    [self.NSTimerbtn setTitle:@"获取验证码" forState:UIControlStateNormal];
    [_NSTimerbtn addTarget:self action:@selector(buttonPYhuoquyanzhengma:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:_NSTimerbtn];
}
#pragma mark = 获取验证码
- (void)buttonPYhuoquyanzhengma:(UIButton *)button {
    self.NSTimerbtn.enabled =NO; //禁止点击
    _count = 2;
    [self.NSTimerbtn setTitle:@"2秒" forState:UIControlStateNormal];
    [self.NSTimerbtn setTitleColor:[UIColor redColor] forState:(UIControlStateNormal)];
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerFired:) userInfo:nil repeats:YES];
}

#pragma mark = 60秒倒计时
- (void)timerFired:(NSTimer *)timer {
    if (_count !=1) {
        _count -=1;
        [self.NSTimerbtn setTitle:[NSString stringWithFormat:@"%ld秒",_count] forState:UIControlStateDisabled];
        
    }
    else
    {
        [timer invalidate];  //定时器停止
        self.NSTimerbtn.enabled = YES;
        [self.NSTimerbtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [self.NSTimerbtn setTitle:@"获取验证码" forState:UIControlStateNormal];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
