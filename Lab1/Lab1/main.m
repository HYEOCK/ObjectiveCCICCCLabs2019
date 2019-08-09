//
//  main.m
//  Lab1
//
//  Created by doris on 09/08/2019.
//  Copyright © 2019 grace. All rights reserved.
//

#import <Foundation/Foundation.h>

// prints the prompt 'message' and return the user input
NSString *getUserInput(int maxLength, NSString *prompt) {
    // check maxLength
    // valuation: 평가, 판단
    if (maxLength < 1) {
        maxLength = 255; // input size
    }
    NSLog(@"%@ ", prompt); // %@ -> 오브젝트
    char inputChars[maxLength]; // char array
    // input string result
    char *result = fgets(inputChars, maxLength, stdin); // stdin -> 파일
    // fgets: I want to get intput from stdin. This length inside this array and than return the pointer to the array.
    // fgets: 파일 데이터를 저장할 변수, 읽을 문자의 수, 읽을 파일 -> while
    // stdin: standard input
    if (result != NULL) {
        NSString *inputStr = [NSString stringWithUTF8String:inputChars];
        // NSString.stringWithUTF8String(inputChars);
        // []: how you call the function (calling a method)
        return [inputStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        // Trimming: new line
    }
    // otherwise
    return NULL;
}

// char *a: * -> 레퍼런스(메모리주소)
// const: 바꿀 수 없다. final과 비슷

// argv: main 함수가 받은 각각의 인자들(문자열)
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!"); // Object-C
        //        printf("%d\n", 10); // C
        
        
        //        NSString *a = @"10";
        //        NSLog(@"%ld", [a integerValue]);
        
        //        NSString *a = @"dfhhdh";
        //        NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init]; // new NSNumberFormatter();
        //        NSNumber *num = [formatter numberFromString:a];
        //        if (num == nil) {
        //            // not convertable
        //        } else {
        //            NSInteger ld = num.integerValue;
        //        }
        
        while (YES) {
            NSString *input = getUserInput(200, @"Enter your a string: ");
            NSString *menu = getUserInput(200, @"\n1. Uppercase \n2. Lowercase \n3. Numberize \n4. Canadianize \n5. Respond \n6. De-Space-It");
            
            if ([menu isEqualToString:@"7"]) {
                NSLog(@"Bye!");
                break;
            } else if ([menu isEqualToString:@"1"]) {
                NSLog(@"%@", [input uppercaseString]);
            } else if ([menu isEqualToString:@"2"]) {
                NSLog(@"%@", [input lowercaseString]);
            } else if ([menu isEqualToString:@"3"]) {
                NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
                // new NSNumberFormatter();
                NSNumber *num = [formatter numberFromString:input];
                if (num == nil) {
                    // not convertable
                    NSLog(@"It's wrong");
                } else {
                    NSInteger ld = num.integerValue;
                    NSLog(@"%ld", ld);
                }
            } else if ([menu isEqualToString:@"4"]) {
                NSLog(@"%@", [input stringByAppendingString:@", eh?"]);
            } else if ([menu isEqualToString:@"5"]) {
                NSString *endChar = input;
                if ([endChar hasSuffix: @"?"]) {
                    NSLog(@"I don't know");
                } else if ([endChar hasSuffix: @"!"]) {
                    NSLog(@"Whoa, calm down!");
                } else {
                    NSLog(@"Do you want a again?");
                }
            } else if ([menu isEqualToString:@"6"]) {
                NSLog(@"%@", [input stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
            }
        }
    }
    return 0;
}

// char * == char array
// efficiency: 효율, 능률
