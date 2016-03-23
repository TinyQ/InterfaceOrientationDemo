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
    //_updateToInterfaceOrientation:animated:
    
    NSString *selector = @"_";
    selector = [selector stringByAppendingString:@"update"];
    selector = [selector stringByAppendingString:@"To"];
    selector = [selector stringByAppendingString:@"Interface"];
    selector = [selector stringByAppendingString:@"Orientation"];
    selector = [selector stringByAppendingString:@":"];
    selector = [selector stringByAppendingString:@"animated"];
    selector = [selector stringByAppendingString:@":"];
    
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wundeclared-selector"
    SEL mySelector = NSSelectorFromString(selector);
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
