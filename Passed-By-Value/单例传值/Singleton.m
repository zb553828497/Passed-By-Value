//
//  Singleton.m
//  Passed-By-Value
//
//  Created by zhangbin on 16/6/7.
//  Copyright © 2016年 zhangbin. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton
static Singleton *singletonData = nil;
+(Singleton *)shareData{
// GCD的一次性代码
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        singletonData = [[Singleton alloc] init];
    });
    return singletonData;
}
@end
