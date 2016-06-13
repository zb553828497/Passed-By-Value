//
//  TwoVc.m
//  Passed-By-Value
//
//  Created by zhangbin on 16/6/7.
//  Copyright © 2016年 zhangbin. All rights reserved.
//

#import "TwoVc.h"


@interface TwoVc ()
@property (weak, nonatomic) IBOutlet UILabel *GetValue;

@end

@implementation TwoVc

- (void)viewDidLoad {
    [super viewDidLoad];
    self.GetValue.text = self.SaveValue;
    
}
-(instancetype)initWithPassValueByMethod:(NSString *)value{
    if(self = [super initWithNibName:nil bundle:nil])
    self.SaveValue = value;
    return self;
}
- (IBAction)ReturnBtn:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}


@end
