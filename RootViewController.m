//
//  RootViewController.m
//  test
//
//  Created by 孙林鹏 on 15/12/28.
//  Copyright © 2015年 jinzhaoshenghui.com. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    KeychainItemWrapper *wrapper = [[KeychainItemWrapper alloc]initWithIdentifier:@"xxxxxx" accessGroup:nil];
    self.text1.text = [wrapper objectForKey:(id)kSecAttrAccount];
    self.text2.text = [wrapper objectForKey:(id)kSecValueData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
