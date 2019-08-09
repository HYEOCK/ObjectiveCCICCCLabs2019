//
//  Box.h
//  Lab2_Boxes
//
//  Created by doris on 09/08/2019.
//  Copyright © 2019 grace. All rights reserved.
//

#import <Foundation/Foundation.h>

// 노트북

@interface Box : NSObject

// height, width, length - float
@property (nonatomic) float width;
@property (nonatomic) float height;
@property (nonatomic) float lenght;

- (instancetype)initWithWidth: (float) width Height: (float) height Leanght: (float) lenght;
- (float) getVolum;
- (float) ratioToAnotherBox: (Box *) box;

@end

