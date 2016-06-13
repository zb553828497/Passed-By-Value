//
//  ThreeVc.m
//  Passed-By-Value
//
//  Created by zhangbin on 16/6/7.
//  Copyright © 2016年 zhangbin. All rights reserved.
//

#import "ThreeVc.h"
#import "FourVc.h"
@interface ThreeVc ()
@property (weak, nonatomic) IBOutlet UITextField *Value;

@end

@implementation ThreeVc

- (void)viewDidLoad {
    [super viewDidLoad];

}
- (IBAction)PassValueBtn:(id)sender {
    FourVc *four = [[FourVc alloc] init];
    four.saveValue = self.Value.text;
    [self.navigationController pushViewController:four animated:YES];
}
@end
