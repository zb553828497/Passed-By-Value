


//
//  EightVc.m
//  Passed-By-Value
//
//  Created by zhangbin on 16/6/7.
//  Copyright © 2016年 zhangbin. All rights reserved.
//

#import "EightVc.h"

@interface EightVc ()
@property (weak, nonatomic) IBOutlet UITextField *Value;

@end

@implementation EightVc

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *array = [NSArray arrayWithObjects:[UIColor redColor],[UIColor purpleColor],[UIColor cyanColor],[UIColor blueColor],nil];
    // 随机从4个颜色中取出一个作为color的value
    NSDictionary *dict  = @{@"color":[array objectAtIndex:rand()%4],
                            @"text":self.Value.text
                            };
    
// 注册通知中心
    NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
// 发送通知   userInfo参数必须为字典类型
    [center postNotificationName:@"PassValueNotification" object:@"zhangbin" userInfo:dict];

}

- (IBAction)PassValue:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
