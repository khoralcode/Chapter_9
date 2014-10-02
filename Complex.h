//
//  Complex.h
//  complexNumber
//
//  Created by Alex on 9/17/14.
//  Copyright (c) 2014 ObjCBook. All rights reserved.
//
// Interface file for Complex class


#import <Foundation/Foundation.h> 

@interface Complex: NSObject

@property double real, imaginary;

-(void) print;
-(void) setReal: (double) a andImaginary: (double) b;

-(id) addem: (id) f;

@end
