//
//  GraphicObject.m
//  Exercise_8-4
//
//  Created by Alex on 9/21/14.
//  Copyright (c) 2014 ObjCBook. All rights reserved.
//

#import "GraphicObject.h"

@implementation GraphicObject

@synthesize fillColor,lineColor;



-(BOOL) filled    // Is the object filled?
{
    if(fillColor == 0||fillColor == 0)
        return NO;
        else return YES;
}
-(int) seTfillColor //32  bit integer
{
  return  fillColor;
}

-(int) seTlineColor // 32 bit integer
{
    return  lineColor;
}
@end
