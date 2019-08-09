//
//  Box.m
//  Lab2_Boxes
//
//  Created by doris on 09/08/2019.
//  Copyright © 2019 grace. All rights reserved.
//

#import "Box.h"

@implementation Box

// initializer
- (instancetype)initWithWidth: (float) width Height: (float) height Leanght: (float) lenght
{
    if (self = [super init]) {
        _width = width;
        _height = height;
        _lenght = lenght;
    }
    return self;
}

// getVolume
// return float number
- (float) getVolum {
    return _width * _height * _lenght;
    
}

- (float) ratioToAnotherBox: (Box *) box {
    return [self getVolum] / [box getVolum];
}

@end
