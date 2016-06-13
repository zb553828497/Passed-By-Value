//
//  SevenVc.m
//  Passed-By-Value
//
//  Created by zhangbin on 16/6/7.
//  Copyright © 2016年 zhangbin. All rights reserved.
//

#import "SevenVc.h"
#import "EightVc.h"

@interface SevenVc ()
@property (weak, nonatomic) IBOutlet UITextField *GetValue;

@end

@implementation SevenVc

- (void)viewDidLoad {
    [super viewDidLoad];
    NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
    [center addObserver:self selector:@selector(ReceiveNotification:) name:@"PassValueNotification" object:nil];
}

- (IBAction)Jump:(id)sender {
    EightVc *eight = [[EightVc alloc] init];
    [self.navigationController pushViewController:eight animated:YES];
   }
-(void)ReceiveNotification:(NSNotification *)notification{
    // 从userInfo字典中取出color对应的value
    self.view.backgroundColor = [notification.userInfo valueForKey:@"color"];
    //  从userInfo字典中取出text对应的value
    self.GetValue.text = [notification.userInfo valueForKey:@"text"];
}

@end
