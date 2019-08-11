//
//  Ramsy.m
//  Foodtruck
//
//  Created by doris on 07/08/2019.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import "Ramsy.h"

@implementation Ramsy

- (double) foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food {
    if ([food isEqualToString:@"bao"]) {
        return 12.99;
    } else if ([food isEqualToString:@"Steak&Potato"]) {
        return 59.99;
    } else if ([food isEqualToString:@"pasta"]) {
        return 19.99;
    } else {
        NSLog(@"Sorry, not available.");
    }
    return 0;
}

@end
