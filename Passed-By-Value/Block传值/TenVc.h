//
//  TenVc.h
//  Passed-By-Value
//
//  Created by zhangbin on 16/6/7.
//  Copyright © 2016年 zhangbin. All rights reserved.
//

#import <UIKit/UIKit.h>
// 利用typedef给block起别名,block变量的名称就是别名,也就是类型的名称,以后可以用DoneBlock这个类型去定义并初始化一个block，例如下面的initWithBlock方法中的参数
typedef void(^DoneBlock)(UIColor *color,NSString *name);
@interface TenVc : UIViewController

// 声明Block  DoneBlock是一种特殊的类型
-(instancetype)initWithBlock:(DoneBlock)block;
@end
