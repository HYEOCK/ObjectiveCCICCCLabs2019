//
//  Greeter.h
//  Foodtruck
//
//  Created by doris on 07/08/2019.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol GreeterDelegate
- (BOOL) shouldSayHello;

@end

@interface Greeter : NSObject

@property (nonatomic, weak) id<GreeterDelegate> delegate;
- (void) greet;
@end

