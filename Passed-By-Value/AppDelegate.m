//
//  AppDelegate.m
//  Passed-By-Value
//
//  Created by zhangbin on 16/6/7.
//  Copyright © 2016年 zhangbin. All rights reserved.
//

#import "AppDelegate.h"
#import "OneVc.h"
#import "ThreeVc.h"
#import "FiveVc.h"
#import "SevenVc.h"
#import "NineVc.h"
#import "ElevenVc.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] init];
    self.window.frame = [UIScreen mainScreen].bounds;
    // 方法传值
    OneVc *one = [[OneVc alloc] init];
    // 属性传值
    ThreeVc *three = [[ThreeVc alloc] init];
    // 代理传值
    FiveVc  *five = [[FiveVc alloc] init];
    // 通知传值
    SevenVc *seven = [[SevenVc alloc]init];
    // Block传值
    NineVc *nine = [[NineVc alloc] init];
    // 单例传值
    ElevenVc *eleven = [[ElevenVc alloc]init];
    
    UINavigationController *Nav = [[UINavigationController alloc]initWithRootViewController:nine];
    self.window.rootViewController = Nav;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
