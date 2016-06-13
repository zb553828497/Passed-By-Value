//
//  FiveVc.m
//  Passed-By-Value
//
//  Created by zhangbin on 16/6/7.
//  Copyright © 2016年 zhangbin. All rights reserved.
//

#import "FiveVc.h"
#import "SixVc.h"

@interface FiveVc ()<SixVcDelegate>
@property (weak, nonatomic) IBOutlet UILabel *GetValue;

@end

@implementation FiveVc

- (void)viewDidLoad {
    [super viewDidLoad];

}
- (IBAction)Jump:(id)sender {
    SixVc *six = [[SixVc alloc] init];
    six.delegate = self;
    [self.navigationController pushViewController:six animated:YES];
}
// 实现代理方法
-(void)PassValue:(NSString *)passValue{
    self.GetValue.text = passValue;
}
@end
