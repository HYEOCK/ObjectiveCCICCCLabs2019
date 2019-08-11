//
//  FriendlyGreetingDecider.h
//  Foodtruck
//
//  Created by doris on 07/08/2019.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Greeter.h"

@interface FriendlyGreetingDecider : NSObject <GreeterDelegate>

- (BOOL) shouldSayHello;

@end

