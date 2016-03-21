//
//  TQAViewController.m
//  qfu_test
//
//  Created by qfu on 3/8/16.
//  Copyright © 2016 qfu. All rights reserved.
//

#import "TQAViewController.h"
#import "TQBViewController.h"

@interface TQAViewController ()

@end

@implementation TQAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    self.title = @"I`m A";
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, 100, 50)];
    [button setTitle:@"Push B" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor redColor]];
    [button addTarget:self action:@selector(buttonTouchB:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)buttonTouchB:(id)sender
{
    TQBViewController *controller = [[TQBViewController alloc] init];
    [self.navigationController pushViewController:controller animated:YES];
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAllButUpsideDown;
}

@end
