//
//  ContactList.m
//  Lab4_ContactList
//
//  Created by doris on 11/08/2019.
//  Copyright © 2019 grace. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
    if (self = [super init]) {
        _contacts = [[NSMutableArray alloc]init];
    }
    
    return self;
}

@end
