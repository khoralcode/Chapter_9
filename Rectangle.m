//


#import "Rectangle.h"
#import "XYPoint.h"


@implementation Rectangle

{
    XYPoint *origin;
}

@synthesize width, height;


-(void) setWidth: (float) w andHeight: (float) h

{
    width = w;
    height = h;
}

-(float) area

{
    return width * height;
}

-(float) perimeter

{
    return (width + height) * 2;
}

-(void)setOrigin: (XYPoint *) pt
{
    origin = pt;
}

-(XYPoint *) origin
{
    return origin;
}

-(XYPoint *) translate:(XYPoint *) newPoint;

{
    origin = newPoint;
    return origin;
}
-(BOOL) containsPoint: (XYPoint *) aPoint
{
    if ((aPoint.x > origin.x && aPoint.x < origin.x + width)&&
        (aPoint.y > origin.y && aPoint.y < origin.y + height))
        return YES;
    else
        return NO;
        }

-(Rectangle *) intersect: (Rectangle *) overlap
{
    
    if
    
     ((self.origin.x + width)>overlap.origin.x
        &&
    (overlap.origin.x + width)>(self.origin.x))
    
        overlap.origin.x =0;
        //overlap.origin.y =0;<----Throws error when uncommented
else
      {
        overlap.origin.x =self.origin.x + self.width - overlap.origin.x;
        overlap.origin.y =overlap.origin.y + self.height - self.origin.y + self.height;

        overlap.width = overlap.origin.x + self.width - self.origin.x + self.width;
        overlap.height = overlap.origin.y + self.height -self.origin.y;
    
      }
    return overlap;
}
-(void) myDraw
{
    int i, n;
    
    for (i= 1; i<= width; i++)
    {
        printf("-");
    }
    
    for (i =1; i<= height; i++)
    {
        printf("\n|");
        for (n =1; n < width-1; n++) {
            printf(" ");
        }
        printf("|");
    }
    printf("\n");
    for (i = 1; i <= width; i++) {
        printf("-");
    }
    printf("\n");
}

@end
