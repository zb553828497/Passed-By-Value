



//
//  ElevenVc.m
//  Passed-By-Value
//
//  Created by zhangbin on 16/6/7.
//  Copyright © 2016年 zhangbin. All rights reserved.
//

#import "ElevenVc.h"
#import "TwelveVc.h"
#import "Singleton.h"

@interface ElevenVc ()
@property (weak, nonatomic) IBOutlet UITextField *Value;

@end

@implementation ElevenVc

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)PassValueBtn:(id)sender {
    Singleton *Single = [Singleton shareData];
    Single.value = self.Value.text;
    TwelveVc *ten = [[TwelveVc alloc] init];
    [self.navigationController pushViewController:ten animated:YES];
}

@end
