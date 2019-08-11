//
//  main.m
//  Lab7_PatientAndDoctor
//
//  Created by doris on 11/08/2019.
//  Copyright © 2019 grace. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableDictionary *allPrescriptions = [[NSMutableDictionary alloc] init];
        
        Doctor *newDoctor = [[Doctor alloc] initWithName:@"Some Doctor" specialization:@"Some Specializtion" allPrescriptions: allPrescriptions];
        Patient *newPatient = [[Patient alloc] initWithPatient:@"Some Patient" age:30 haveHealthCard:YES symptom:@"Some Symptom"];
    }
    return 0;
}
