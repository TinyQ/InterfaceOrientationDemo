//
//  TQRootViewController.m
//  qfu_test
//
//  Created by qfu on 3/8/16.
//  Copyright © 2016 qfu. All rights reserved.
//

#import "TQRootViewController.h"
#import "TQAViewController.h"

@interface TQRootViewController ()

@end

@implementation TQRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"I`m Root";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, 100, 50)];
    [button setTitle:@"Push A" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor blueColor]];
    [button addTarget:self action:@selector(buttonTouchA:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (BOOL)shouldAutorotate
{
    return NO;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

- (void)buttonTouchA:(id)sender
{
    TQAViewController *controller = [[TQAViewController alloc] init];
    [self.navigationController pushViewController:controller animated:YES];
}

@end
