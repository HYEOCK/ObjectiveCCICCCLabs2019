//
//  Prescriptions.h
//  Lab7_PatientAndDoctor
//
//  Created by doris on 11/08/2019.
//  Copyright © 2019 grace. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Prescriptions : NSObject

@property (nonatomic, strong)NSString *name;

+ (instancetype) prescriptionWithName: (NSString *) name;

@end
