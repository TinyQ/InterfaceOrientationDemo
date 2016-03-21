//
//  UIWindow+InterfaceOrientations.m
//  qfu_test
//
//  Created by qfu on 3/21/16.
//  Copyright © 2016 qfu. All rights reserved.
//

#import "UIWindow+InterfaceOrientations.h"

@implementation UIWindow (InterfaceOrientations)

- (void)private_updateToInterfaceOrientation:(UIInterfaceOrientation)orientation animated:(BOOL)animated
{
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wundeclared-selector"
    SEL mySelector = @selector(_updateToInterfaceOrientation:animated:);
#pragma clang diagnostic pop
    NSMethodSignature * sig = [[self class] instanceMethodSignatureForSelector:mySelector];
    NSInvocation * myInvocation = [NSInvocation invocationWithMethodSignature: sig];
    [myInvocation setTarget:self];
    [myInvocation setSelector: mySelector];
    [myInvocation setArgument:&orientation atIndex: 2];
    [myInvocation setArgument:&animated atIndex: 3];
    [myInvocation retainArguments];
    [myInvocation invoke];
}

@end
