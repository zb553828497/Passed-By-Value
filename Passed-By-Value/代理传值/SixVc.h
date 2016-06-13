//
//  SixVc.h
//  Passed-By-Value
//
//  Created by zhangbin on 16/6/7.
//  Copyright © 2016年 zhangbin. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SixVcDelegate <NSObject>

-(void)PassValue:(NSString *)passValue;

@end

@interface SixVc : UIViewController
@property(nonatomic,unsafe_unretained)id<SixVcDelegate> delegate;

@end
