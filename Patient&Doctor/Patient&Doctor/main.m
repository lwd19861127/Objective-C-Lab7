//
//  main.m
//  Patient&Doctor
//
//  Created by WendaLi on 2020-04-06.
//  Copyright © 2020 WendaLi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Doctor *doctor = [[Doctor alloc] initWithName:@"Haword" andSpecialization:@"Dental"];
        while (YES) {
            NSLog(@"\nWelcome to %@'s %@", doctor.name, doctor.specialization);
            NSString *patientName = [InputHandler getUserInput:255 prompt:@"\n What's your name?"];
            int patientAge = [[InputHandler getUserInput:255 prompt:@"\n How old are you"] intValue];
            NSString *patienHealthCardNumber = [InputHandler getUserInput:255 prompt:@"\n What's your healthCardNumber?"];
            Patient *patient = [[Patient alloc] initWithName:patientName andAge:patientAge andHealthCardNumber:patienHealthCardNumber];
            
            if ([patienHealthCardNumber isEqualToString:@""]) {
                NSLog(@"Sorry, we can't accept you");
                break;
            }else {
                [doctor acceptPatient:patient];
                [Doctor readPrescriptionfrom:patient];
                NSString *symptoms = [InputHandler getUserInput:255 prompt:@"\nWhat's your symptoms"];
                NSString *prescription = [doctor requestMedication:symptoms];
                [Doctor addPrescription:prescription to:patient];
                
            }
        }
        
        
    }
    return 0;
}
