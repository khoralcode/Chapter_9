//
//  XYPoint.h
//  testing
//
//  Created by Alex on 9/20/14.
//  Copyright (c) 2014 ObjCBook. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYPoint : NSObject

@property float x, y;
-(void) print;
-(void) setX: (float) xVal andY: (float) yVal;

@end
