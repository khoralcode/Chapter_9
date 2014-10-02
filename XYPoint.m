//
//  XYPoint.m
//  testing
//
//  Created by Alex on 9/20/14.
//  Copyright (c) 2014 ObjCBook. All rights reserved.
//

#import "XYPoint.h"

@implementation XYPoint

@synthesize x, y;

-(void) setX: (float) xVal andY: (float) yVal

{
    x = xVal;
    y = yVal;
}

-(void) print
{
    NSLog(@"%.2f,%.2f", x, y);
}
@end