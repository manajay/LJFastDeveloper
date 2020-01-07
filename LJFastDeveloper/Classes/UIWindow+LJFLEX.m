//
//  UIWindow+LJFLEX.m
//  LJFastDeveloper
//
//  Created by manajay on 2018/8/11.
//  Copyright © 2018  manajay. All rights reserved.
//

#import "UIWindow+LJFLEX.h"

#if DEBUG
#import <FLEX/FLEXManager.h>
#endif

@implementation UIWindow (LJFLEX)

#if DEBUG
- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    [super motionBegan:motion withEvent:event];
    NSLog(@"启动FLEX调试工具");
    if (motion == UIEventSubtypeMotionShake) {
        [[FLEXManager sharedManager] showExplorer];
        [[FLEXManager sharedManager] setNetworkDebuggingEnabled:YES];
    }
}
#endif

@end
