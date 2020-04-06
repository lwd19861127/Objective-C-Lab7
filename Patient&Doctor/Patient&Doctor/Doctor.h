//
//  Doctor.h
//  Patient&Doctor
//
//  Created by WendaLi on 2020-04-06.
//  Copyright © 2020 WendaLi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

NS_ASSUME_NONNULL_BEGIN

@interface Doctor : NSObject

@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* specialization;
@property (nonatomic, strong) NSMutableSet* patientsList;

- (instancetype)initWithName: (NSString*) name andSpecialization: (NSString*) specialization;
- (void) acceptPatient: (Patient*) patient;
- (NSString*) requestMedication: (NSString*) symptoms;

+ (void) addPrescription: (NSString*) prescription to: (Patient*) patient;
+ (NSString*) readPrescriptionfrom:(Patient*) patient;

@end

NS_ASSUME_NONNULL_END
