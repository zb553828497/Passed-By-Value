//
//  FourVc.h
//  Passed-By-Value
//
//  Created by zhangbin on 16/6/7.
//  Copyright © 2016年 zhangbin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FourVc : UIViewController
// 必须为retain，否则提示'-[__NSArrayI length]: unrecognized selector sent to instance 0x7f947a184390'
@property(nonatomic,retain)NSString *saveValue;
@end
