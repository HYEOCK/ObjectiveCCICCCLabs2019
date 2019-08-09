//
//  main.m
//  Lab2_Boxes
//
//  Created by doris on 09/08/2019.
//  Copyright © 2019 grace. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /Box *box1 = [[Box alloc]initWithWidth:10 Height:10 Leanght:10];
        Box *box2 = [[Box alloc]initWithWidth:100 Height:100 Leanght:100];
        NSLog(@"ratio: %f", [box1 ratioToAnotherBox: box2]);
        
    }
    return 0;
}
