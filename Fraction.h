//
//  Fraction.h
//  Exercise7-2-FractionCalculator
//
//  Created by Alex on 9/17/14.
//  Copyright (c) 2014 ObjCBook. All rights reserved.


#import <Foundation/Foundation.h>

// The fraction class

@interface Fraction : NSObject


@property int numerator, denominator;




-(void) print:(BOOL) toReduceOrNotToReduce;
- (void)setTo:(int)n over:(int)d;
- (double)convertToNum;
- (id)addem:(id)f;
- (void)reduce;
// Subtract argument from receiver
-(Fraction *) subtract: (Fraction *) f;
// Multiply receiver by argument
-(Fraction *) multiply: (Fraction *) f;
// Divide receiver by argument
-(Fraction *) divide: (Fraction *) f;
@end
