//
//  TQBViewController.m
//  qfu_test
//
//  Created by qfu on 3/8/16.
//  Copyright © 2016 qfu. All rights reserved.
//

#import "TQBViewController.h"

@interface TQBViewController ()

@end

@implementation TQBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    self.title = @"I`m B";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (BOOL)shouldAutorotate
{
    return NO;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

@end
