//
//  main.m
//  Lab4_ContactList
//
//  Created by doris on 11/08/2019.
//  Copyright © 2019 grace. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollecto.h"
#import "ContactList.h"
#import "Contact.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //ContactList *contactList = [[ContactList alloc]init];
        InputCollecto *inputCollecto = [[InputCollecto alloc]init];
        
        while (YES) {
            NSString *mainMunu = getUserInput(@"Enter your username ");
            
            if ([mainMunu isEqualToString:@"name"]) {
                NSLog(@"%@", inputCollecto);
            } else if ([mainMunu isEqualToString:@"email"]) {
                NSLog(@"%@", inputCollecto);
            }
        }
    }
    return 0;
}
