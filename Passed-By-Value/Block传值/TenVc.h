//
//  TenVc.h
//  Passed-By-Value
//
//  Created by zhangbin on 16/6/7.
//  Copyright © 2016年 zhangbin. All rights reserved.
//

#import <UIKit/UIKit.h>
// 声明Block  两个参数color和name
typedef void(^DoneBlock)(UIColor *color,NSString *name);
@interface TenVc : UIViewController

// 声明Block
-(instancetype)initWithBlock:(DoneBlock)block;
@end
