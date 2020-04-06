//
//  Patient.m
//  Patient&Doctor
//
//  Created by WendaLi on 2020-04-06.
//  Copyright © 2020 WendaLi. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)initWithName: (NSString*) name andAge: (int) age andHealthCardNumber: (NSString*) healthCardNumber
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _healthCardNumber = healthCardNumber;
    }
    return self;
}

@end
