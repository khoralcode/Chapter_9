//
//  main.m
//  testing
//
//  Created by Alex on 9/25/14.
//  Copyright (c) 2014 ObjCBook. All rights reserved.
//

// Illustrate Dynamic Typing and Binding
#import "Fraction.h"
#import "Complex.h"
#import "Rectangle.h"
#import "XYPoint.h"

int main (int argc, char * argv[]) {
    
    @autoreleasepool {
       
        id result;
        id dataValue2;
        id dataValue1;
        id dataValue;
        id dataValue3;
        Fraction *f1 = [[Fraction alloc] init];
        Complex *c1 = [[Complex alloc] init];
        XYPoint *x1 = [[XYPoint alloc] init];
        id c2 = [[Complex alloc] init];
      
        dataValue1 = f1;
        dataValue2 = c1;
        dataValue3 = c2;
        
        NSLog (@"%i",[c1 isMemberOfClass: [NSObject class]]);
        NSLog (@"%i",[f1 isMemberOfClass: [Complex class]]);
        NSLog (@"%i",[c1 isKindOfClass: [NSObject class]]);
        NSLog (@"%i",[f1 isKindOfClass: [Fraction class]]);
        NSLog (@"%i",[f1 respondsToSelector: @selector (print)]);
        NSLog (@"%i",[c1 respondsToSelector: @selector (print)]);
        //[f1 instancesRespondToSelector: @selector (print)];
        NSLog (@"%i",[c2 respondsToSelector: @selector (print)]);
        NSLog (@"%i",[c2 isKindOfClass: [Complex class]]);
        NSLog (@"%i",[[c2 class] respondsToSelector: @selector (alloc)]);
        
        [f1 setTo: 2 over: 5];
        [c1 setReal: 10.0 andImaginary: 2.5];
        [c2 setReal: 14.0 andImaginary: 4.5];
        [x1 setX:12 andY: 16];
        
           dataValue = x1;
        [dataValue print];
        // now dataValue gets a complex number
       
        
        [dataValue print];
        
        result = [dataValue3 addem: dataValue2];
        [result print];
        
    }
    
    return 0; }