//
//  Son.m
//  MsgSendStudy
//
//  Created by 王天亮 on 2020/7/20.
//  Copyright © 2020 王天亮. All rights reserved.
//

#import "Son.h"

@implementation Son
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"class:%@", NSStringFromClass([self class]));
        NSLog(@"superClass:%@", NSStringFromClass([super class]));
    }
    return self;
}
@end
