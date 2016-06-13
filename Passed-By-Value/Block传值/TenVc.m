//
//  TenVc.m
//  Passed-By-Value
//
//  Created by zhangbin on 16/6/7.
//  Copyright © 2016年 zhangbin. All rights reserved.
//

#import "TenVc.h"

@interface TenVc ()
@property (weak, nonatomic) IBOutlet UITextField *Value;
@property(nonatomic,copy)DoneBlock myBlock;
@end

@implementation TenVc

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(instancetype)initWithBlock:(DoneBlock )block{
    self = [super init];
    if (self) {
        self.myBlock = block;
    }
    return self;

}
- (IBAction)PassValue:(id)sender {
    NSArray *array = [NSArray arrayWithObjects:[UIColor redColor],[UIColor purpleColor],[UIColor cyanColor],[UIColor blueColor],nil];
    self.myBlock([array objectAtIndex:rand()%4],self.Value.text);
    [self.navigationController popViewControllerAnimated:YES];
}
      

@end
