//
//  Fraction.m
//  FractionTest
//
//  Created by Alex on 9/17/14.
//  Copyright (c) 2014 ObjCBook. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction


@synthesize numerator, denominator;


-(void) print: (BOOL) reduceFrac
{
    if (denominator == 1)
        NSLog (@"%i", numerator);
    else if (denominator == 0)
    {
        NSLog(@"NAN");
    }
    else if (reduceFrac)
    {
        Fraction *reduceFraction = [[Fraction alloc] init];
        [reduceFraction setTo: numerator over: denominator];
        if (reduceFraction.denominator == 1) {
            NSLog(@"%i", reduceFraction.numerator);
        }
        else
            NSLog(@"%i/%i", reduceFraction.numerator, reduceFraction.denominator);
        NSLog (@"Previously the fraction had been %i/%i.", numerator, denominator);
        
    }
    else
        NSLog (@"%i/%i", numerator, denominator);}



- (id)addem:(id)f {
    Fraction *result = [Fraction new];
    result.numerator = numerator * [f denominator] +
    denominator * [f numerator];
    result.denominator = denominator * [f denominator];
    
    [result reduce];
    return result;
}
-(Fraction *) subtract: (Fraction *) f;{
    Fraction *result = [Fraction new];
    int x, y;
    
    x=denominator,y=f.denominator;
    while(denominator!=f.denominator){
        if(denominator>f.denominator)
            denominator=denominator-f.denominator;
        else
            f.denominator=f.denominator-denominator;
    }
    
    result.denominator = x*y/denominator;
    result.numerator = ((denominator/x) * numerator)- ((f.denominator / y) * f.numerator);
    
    [result reduce];
    return result;
    
}
// Multiply receiver by argument
-(Fraction *) multiply:(Fraction *)f;{
    Fraction *result = [Fraction new];
    result.numerator = numerator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    [result reduce];
    return result;
    
}
// Divide receiver by argument
-(Fraction *) divide:(Fraction *)f;{
    Fraction *result = [Fraction new];
    result.numerator = denominator / f.denominator;
    result.denominator = numerator / numerator;
    
    [result reduce];
    return result;
    
}
- (void)setTo:(int)n over:(int)d {
    numerator = n;
    denominator = d;
    
}


- (double)convertToNum {
    if (denominator != 0)
        return (double)numerator/denominator;
    else
        return NAN;
}



- (void)reduce {
    int u = numerator;
    int v = denominator;
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    numerator /= u;
    denominator /= u;
}


@end
