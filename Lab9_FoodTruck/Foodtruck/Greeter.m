//
//  Greeter.m
//  Foodtruck
//
//  Created by doris on 07/08/2019.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import "Greeter.h"

@implementation Greeter

- (void) greet {
    //if ([self.delegate shouldSayHello]) {
    if ([_delegate shouldSayHello]) {
        NSLog(@"Hello");
    } else {
        NSLog(@"....");
    }
}
@end
