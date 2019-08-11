//
//  Prescriptions.m
//  Lab7_PatientAndDoctor
//
//  Created by doris on 11/08/2019.
//  Copyright © 2019 grace. All rights reserved.
//

#import "Prescriptions.h"

@implementation Prescriptions

+ (instancetype)prescriptionWithName:(NSString *)name {
    Prescriptions *prescription = [[Prescriptions alloc] init];
    prescription.name = name;
    return prescription;
}

@end
