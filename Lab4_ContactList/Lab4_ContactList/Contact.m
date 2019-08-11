//
//  Contact.m
//  Lab4_ContactList
//
//  Created by doris on 11/08/2019.
//  Copyright © 2019 grace. All rights reserved.
//

#import "Contact.h"
#import "InputCollecto.h"

@implementation Contact

- (instancetype)init
{
    if (self = [super init]) {
        _name = getUserInput(@"name: ");
        _email = getUserInput(@"email: ");
    }
    return self;
}

@end
