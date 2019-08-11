//
//  InputCollecto.m
//  Lab4_ContactList
//
//  Created by doris on 11/08/2019.
//  Copyright © 2019 grace. All rights reserved.
//

#import "InputCollecto.h"

@implementation InputCollecto

NSString *getUserInput(NSString *prompt) {
    NSLog(@"%@ ", prompt);
    int maxLength = 255;
    char inputChars[maxLength];
    char *result = fgets(inputChars, maxLength, stdin);
    
    if (result != NULL) {
        NSString *inputStr = [NSString stringWithUTF8String:inputChars];
        return [inputStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return NULL;
}

@end
