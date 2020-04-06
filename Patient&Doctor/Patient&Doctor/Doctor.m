//
//  Doctor.m
//  Patient&Doctor
//
//  Created by WendaLi on 2020-04-06.
//  Copyright © 2020 WendaLi. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor
static NSMutableDictionary* prescriptionList = nil;

- (instancetype)initWithName: (NSString*) name andSpecialization: (NSString*) specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        _patientsList = [NSMutableSet new];
    }
    return self;
}

- (void) acceptPatient: (Patient*) patient
{
    [self.patientsList addObject:patient];
}

- (NSString*) requestMedication: (NSString*) symptoms
{
    return @"\nPrescription:\n1. A\n2. B";
}

+ (void) initPrescription
{
    if (prescriptionList == nil) {
        prescriptionList = [NSMutableDictionary new];
    }
}

+ (void) addPrescription: (NSString*) prescription to: (Patient*) patient
{
    [self initPrescription];
    [prescriptionList setValue:prescription forKey:patient.name];
    NSLog(@"\n%@", prescription);
}

+ (NSString*) readPrescriptionfrom:(Patient*) patient
{
    [self initPrescription];
    NSString *patientPrescription = [prescriptionList objectForKey:patient.name];
    if (patientPrescription != nil) {
        NSLog(@"\nPrevious Prescription:%@", patientPrescription);
    }
    return patientPrescription;
}
@end
