//
//  NineVc.m
//  Passed-By-Value
//
//  Created by zhangbin on 16/6/7.
//  Copyright © 2016年 zhangbin. All rights reserved.
//

#import "NineVc.h"
#import "TenVc.h"
@interface NineVc ()
@property (weak, nonatomic) IBOutlet UILabel *GetValue;

@end

@implementation NineVc

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)Click:(id)sender {
    // 执行完TenVc类中的代码，便回调执行Block中的代码，NineVc会拿到TenVc类中的各种数据,将拿到的数据显示到NineVc中
    TenVc *ten = [[TenVc alloc]initWithBlock:^(UIColor *color, NSString *name) {
        self.view.backgroundColor = color;
        self.GetValue.text = name;
    }];
    [self.navigationController pushViewController:ten animated:YES];
}
@end
