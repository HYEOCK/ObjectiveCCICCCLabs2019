//
//  Doctor.h
//  Lab7_PatientAndDoctor
//
//  Created by doris on 11/08/2019.
//  Copyright © 2019 grace. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Prescriptions.h"

@interface Doctor : NSObject

@property(nonatomic, strong)NSString *name;
@property(nonatomic, strong)NSString *specialization;
@property(assign) BOOL available;
@property(nonatomic, strong)NSMutableArray *patientListArray;
@property(nonatomic, strong)NSMutableDictionary *allPrescriptions;

- (instancetype) initWithName: (NSString *)name specialization: (NSString *) specialization allPrescriptions: (NSMutableDictionary *) allPrescription;
- (void)askPatient: (Patient *)patient;
- (BOOL)acceptPatient:(Patient *)patient;
- (void)writePrescription : (Patient *)thePatient;
- (Prescriptions *)getPrescription: (Patient *)thePatient Symptoms: (NSString *)symptom;

@end
