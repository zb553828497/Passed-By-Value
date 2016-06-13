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
    // 执行完TenVc类中的代码，点击传值按钮,便执行block，即self.myBlock(xxx)，pop控制器的同时，也会回调执行到Block中的代码块，NineVc会拿到TenVc类中的各种数据,将拿到的数据显示到NineVc中
    // 两个参数一定也在^的后面,并且用()括起来。 {}就是代码块。
    // 简单的写法，不好理解
//    TenVc *ten = [[TenVc alloc]initWithBlock:^(UIColor *color, NSString *name) {
//        self.view.backgroundColor = color;
//        self.GetValue.text = name;
//    }];
    
    // 繁琐的写法，容易理解
    // 定义并初始化一个block
    DoneBlock block  = ^(UIColor *color, NSString *name) {
        self.view.backgroundColor = color;
        self.GetValue.text = name;
    };
    // 将block中保存的代码作为initWithBlock方法的参数，然后通过initWithBlock接口进入TenVc.m文件中具体实现。block中的代码块此时并不会执行，只有执行了TenVc.m文件中的self.myBlock(xx,xxx），才会执行NineVc.h中的block代码块中的内容
    TenVc *ten = [[TenVc alloc]initWithBlock:block];
        
    [self.navigationController pushViewController:ten animated:YES];
}
@end
