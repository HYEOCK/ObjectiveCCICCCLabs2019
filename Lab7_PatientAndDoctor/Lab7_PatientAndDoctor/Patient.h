//
//  Patient.h
//  Lab7_PatientAndDoctor
//
//  Created by doris on 11/08/2019.
//  Copyright © 2019 grace. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Doctor;

@interface Patient : NSObject
@property (nonatomic, strong)NSString *name;
@property (nonatomic, assign)NSInteger age;
@property (assign)BOOL haveHealthCard;
@property (nonatomic, strong)NSString *symptom;

-(instancetype) initWithPatient: (NSString *)name age: (NSInteger)age haveHealthCard: (BOOL) haveHealthCard  symptom: (NSString *) symptom;
-(void)askDoctor: (Doctor *)doctor;
-(BOOL)canVisitDoctor: (Doctor *)doctor;
-(void)askForPrescription: (Doctor *)doctor;

@end
