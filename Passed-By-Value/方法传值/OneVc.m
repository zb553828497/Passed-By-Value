//
//  OneVc.m
//  Passed-By-Value
//
//  Created by zhangbin on 16/6/7.
//  Copyright © 2016年 zhangbin. All rights reserved.
//

#import "OneVc.h"
#import "TwoVc.h"

@interface OneVc ()
@property (weak, nonatomic) IBOutlet UITextField *Value;

@end

@implementation OneVc

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)PassValueBtn:(id)sender {
    NSString *PassValue = self.Value.text;
    TwoVc  *two  = [[TwoVc alloc] initWithPassValueByMethod:PassValue];
    [self.navigationController pushViewController:two animated:YES];
}

@end
