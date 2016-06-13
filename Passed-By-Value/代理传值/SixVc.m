//
//  SixVc.m
//  Passed-By-Value
//
//  Created by zhangbin on 16/6/7.
//  Copyright © 2016年 zhangbin. All rights reserved.
//

#import "SixVc.h"

@interface SixVc ()
@property (weak, nonatomic) IBOutlet UITextField *Value;

@end

@implementation SixVc

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)PassValueBtn:(id)sender {
    if([self.delegate respondsToSelector:@selector(PassValue:)]){
    [self.delegate PassValue:self.Value.text];
}
[self.navigationController popViewControllerAnimated:YES];
}
@end
