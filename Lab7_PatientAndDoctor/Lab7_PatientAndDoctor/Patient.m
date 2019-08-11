//
//  Patient.m
//  Lab7_PatientAndDoctor
//
//  Created by doris on 11/08/2019.
//  Copyright © 2019 grace. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

-(instancetype) init {
    return [self initWithPatient:nil age:0 haveHealthCard:NO symptom: nil];
}

-(instancetype) initWithPatient: (NSString *)name age: (NSInteger)age haveHealthCard: (BOOL) haveHealthCard  symptom: (NSString *) symptom {
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _haveHealthCard = haveHealthCard;
        _symptom = symptom;
    }
    return self;
}

-(void)askDoctor: (Doctor *)doctor {
    NSLog(@"%@:What do I call you and what are your specilizations?", self.name);
    NSLog(@"Dr.%@: I am Dr.%@, I specialize in %@.", doctor.name, doctor.name, doctor.specialization);
}

-(BOOL)canVisitDoctor:(Doctor *)doctor {
    if (![doctor acceptPatient:self]) {
        return NO;
    }
    return YES;
}

-(void)askForPrescription:(Doctor *)doctor{
    NSLog(@"%@:Dr.%@, I've got %@, I would like a prescription for that.", self.name, doctor.name, self.symptom);
    
}

@end
