//
//  SecondViewController.m
//  LXReactiveCocoa_Demo
//
//  Created by linxiang on 2017/5/3.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import "SecondViewController.h"

#import <ReactiveObjC/ReactiveObjC.h>

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self demo_1];
    
}

- (void)demo_1 {
    //RAC timer 定时器
    // 不需要管 RunLoop 和 多线程 直接干 
    [[RACSignal interval:1.0f onScheduler:[RACScheduler scheduler]]subscribeNext:^(NSDate * _Nullable x) {
        NSLog(@"AAAAAA = %@ == %@",x , [NSThread currentThread]);
    }];
    
}








- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
