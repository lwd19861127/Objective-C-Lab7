//
//  Patient.h
//  Patient&Doctor
//
//  Created by WendaLi on 2020-04-06.
//  Copyright © 2020 WendaLi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Patient : NSObject

@property (nonatomic, strong) NSString* name;
@property (nonatomic, assign) int age;
@property (nonatomic, strong) NSString* healthCardNumber;

- (instancetype)initWithName: (NSString*) name andAge: (int) age andHealthCardNumber: (NSString*) healthCardNumber;

@end

NS_ASSUME_NONNULL_END
