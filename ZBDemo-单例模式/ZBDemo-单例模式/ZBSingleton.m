//
//  ZBSingleton.m
//  ZBDemo-单例模式
//
//  Created by Damon on 15/5/10.
//  Copyright © 2015年 Damon. All rights reserved.
//

#import "ZBSingleton.h"

@implementation ZBSingleton

static ZBSingleton* _instance = nil;

+(instancetype)shareInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[super allocWithZone:NULL] init];
    });
    return _instance;
}

+(id)allocWithZone:(struct _NSZone *)zone
{
    return [ZBSingleton shareInstance];
}

-(id) copyWithZone:(struct _NSZone *)zone
{
    return [ZBSingleton shareInstance];
}


@end
