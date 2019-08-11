//
//  ContactList.h
//  Lab4_ContactList
//
//  Created by doris on 11/08/2019.
//  Copyright © 2019 grace. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property (nonatomic) NSMutableArray *contacts;

-(void)addContact:(Contact *)newContact;

@end
