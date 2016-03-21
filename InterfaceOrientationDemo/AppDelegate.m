//
//  AppDelegate.m
//  InterfaceOrientationDemo
//
//  Created by qfu on 3/22/16.
//  Copyright © 2016 qfu. All rights reserved.
//

#import "AppDelegate.h"
#import "TQRootViewController.h"
#import "UIWindow+InterfaceOrientations.h"

@interface AppDelegate () <UINavigationControllerDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [self.window setRootViewController:self.navigationViewController];
    [self.window makeKeyAndVisible];
    
    return YES;
}

#pragma mark - get & set

- (UIWindow *)window
{
    if (_window == nil) {
        _window = [[UIWindow alloc] init];
    }
    return _window;
}

- (UINavigationController *)navigationViewController
{
    if (_navigationViewController == nil) {
        TQRootViewController *rootViewController = [[TQRootViewController alloc] init];
        _navigationViewController = [[UINavigationController alloc] initWithRootViewController:rootViewController];
        _navigationViewController.delegate = self;
    }
    return _navigationViewController;
}

#pragma mark - UINavigationControllerDelegate

- (void)navigationController:(UINavigationController *)navigationController
      willShowViewController:(UIViewController *)viewController
                    animated:(BOOL)animated
{
    if ([viewController shouldAutorotate]) {
    } else {
        UIInterfaceOrientation orientation = [viewController preferredInterfaceOrientationForPresentation];
        [self.window private_updateToInterfaceOrientation:orientation animated:YES];
    }
}

- (void)navigationController:(UINavigationController *)navigationController
       didShowViewController:(UIViewController *)viewController
                    animated:(BOOL)animated
{
    
}

- (UIInterfaceOrientationMask)navigationControllerSupportedInterfaceOrientations:(UINavigationController *)navigationController
{
    return [navigationController.topViewController supportedInterfaceOrientations];
}

- (UIInterfaceOrientation)navigationControllerPreferredInterfaceOrientationForPresentation:(UINavigationController *)navigationController
{
    return [navigationController.topViewController preferredInterfaceOrientationForPresentation];
}


@end
