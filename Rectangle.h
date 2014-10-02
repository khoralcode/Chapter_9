
#import "GraphicObject.h"
#import <Foundation/Foundation.h>

@class XYPoint;

@interface Rectangle: GraphicObject 

@property float width, height;


-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;

-(XYPoint *) translate:(XYPoint *) newPoint;

-(BOOL) containsPoint: (XYPoint *) aPoint;

-(void) setWidth: (float) w andHeight: (float) h;

-(Rectangle *) intersect: (Rectangle *) overlap;
-(void) myDraw;
-(float) area;
-(float) perimeter;
@end