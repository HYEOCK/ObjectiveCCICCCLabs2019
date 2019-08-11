//
//  Cook.h
//  Foodtruck
//
//  Created by doris on 07/08/2019.
//  Copyright © 2019 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"



@interface Cook : NSObject <FoodTruckDelegate>

- (double) foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food;

@end
