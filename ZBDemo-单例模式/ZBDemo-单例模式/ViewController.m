//
//  ViewController.m
//  ZBDemo-单例模式
//
//  Created by Damon on 15/5/10.
//  Copyright © 2015年 Damon. All rights reserved.
//

#import "ViewController.h"
#import "ZBSingleton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ZBSingleton *obj1 = [ZBSingleton shareInstance];
    NSLog(@"obj1 = %@", obj1);
    
    ZBSingleton *obj2 = [ZBSingleton shareInstance];
    NSLog(@"obj2 = %@", obj2);
    
    ZBSingleton *obj3 = [ZBSingleton shareInstance];
    NSLog(@"obj3 = %@", obj3);
    
}


@end
