//
//  Complex.m
//  complexNumber
//
//  Created by Alex on 9/17/14.
//  Copyright (c) 2014 ObjCBook. All rights reserved.
//

#import "Complex.h" 

@implementation Complex
@synthesize real, imaginary;

-(void) print
{
    NSLog (@" %g + %gi ", real, imaginary); }

-(void) setReal: (double) a andImaginary: (double) b
{
    real = a;
    imaginary = b; }

-(id) addem: (id) f

{
    Complex *result = [[Complex alloc] init];
    result.real = real + [f real];
    result.imaginary = imaginary + [f imaginary];
    
    return result;
}
@end

