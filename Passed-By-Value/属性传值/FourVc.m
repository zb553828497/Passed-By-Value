//
//  FourVc.m
//  Passed-By-Value
//
//  Created by zhangbin on 16/6/7.
//  Copyright © 2016年 zhangbin. All rights reserved.
//

#import "FourVc.h"

@interface FourVc ()
@property (weak, nonatomic) IBOutlet UILabel *GetValue;

@end

@implementation FourVc

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.GetValue.text = self.saveValue;
}

- (IBAction)ReturnBtn:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
