//
//  TwoVc.h
//  Passed-By-Value
//
//  Created by zhangbin on 16/6/7.
//  Copyright © 2016年 zhangbin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TwoVc : UIViewController

@property(nonatomic,retain)NSString *SaveValue;
-(instancetype)initWithPassValueByMethod:(NSString *)value;
@end
