//
//  TwelveVc.m
//  Passed-By-Value
//
//  Created by zhangbin on 16/6/7.
//  Copyright © 2016年 zhangbin. All rights reserved.
//

#import "TwelveVc.h"
#import "Singleton.h"
@interface TwelveVc ()
@property (weak, nonatomic) IBOutlet UILabel *GetValue;

@end

@implementation TwelveVc

- (void)viewDidLoad {
    [super viewDidLoad];
    self.GetValue.text = [Singleton shareData].value;
}
- (IBAction)ReturnBtn:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
