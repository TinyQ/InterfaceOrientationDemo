//
//  UIWindow+InterfaceOrientations.h
//  qfu_test
//
//  Created by qfu on 3/21/16.
//  Copyright © 2016 qfu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIWindow (InterfaceOrientations)

- (void)private_updateToInterfaceOrientation:(UIInterfaceOrientation)orientation animated:(BOOL)animated;

@end
