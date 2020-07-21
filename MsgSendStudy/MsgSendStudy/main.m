//
//  main.m
//  MsgSendStudy
//
//  Created by 王天亮 on 2020/7/20.
//  Copyright © 2020 王天亮. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Son.h"
#import "Father.h"
#import "objc/runtime.h"
int main(int argc, const char * argv[]) {
   
        // insert code here...
       // Son *s = [[Son alloc] init];
//    NSLog(@"%@", [[NSObject superclass] superclass]);
//    NSLog(@"%hhd", [Father isMemberOfClass:[NSObject class]]);
    
//    BOOL res1 = [(id)[NSObject class] isKindOfClass:[NSObject class]];
//
//           BOOL res2 = [(id)[NSObject class] isMemberOfClass:[NSObject class]];
//
//           BOOL res3 = [(id)[Father class] isKindOfClass:[Father class]];
//
//           BOOL res4 = [(id)[Father class] isMemberOfClass:[Father class]];
//
//           NSLog(@"%d %d %d %d", res1, res2, res3, res4);
//
  
//    NSLog(@"%p", [NSObject class]);
////     NSLog(@"%p", [NSArray class]);
////     NSLog(@"%p", [NSString class]);
////     NSLog(@"%@", [NSObject alloc]);
//    NSObject *obj = [[NSObject alloc] init];
//    NSLog(@"%p",  object_getClass(obj));
//    NSLog(@"%p",  &obj);
    struct objc_object *object =(__bridge struct objc_object *)[NSObject new];
    NSUInteger x = object->isa;
    NSLog(@"%lu",(unsigned long)x);
    NSString *string = @"";
    while(x > 0) {
        string = [[NSString stringWithFormat:@"%lu", x&1] stringByAppendingString:string];
        x=x>>1;
    }
    NSLog(@"%@ %lu", string, (unsigned long)[string length]);
    
    
    
    NSString *string2 =@"";
    NSUInteger b = (uintptr_t)[NSObject class];
       while(b > 0) {
           string2 = [[NSString stringWithFormat:@"%lu", b&1] stringByAppendingString:string2];
           b=b>>1;
       }
    NSLog(@"%@ %lu", string2,[string2 length]);
    NSLog(@"%p", [NSObject class]);
    NSString *string3 = @"11111111111111111111111111000000000000000000000";
    NSLog(@"%lu", (unsigned long)[string3 length]);
    return 0;
    
    //7fff92ded118、
  //0x7fff92ded118
}
