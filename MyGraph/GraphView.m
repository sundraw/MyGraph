//
//  GraphView.m
//  MyGraph
//
//  Created by Alexander Kolesnikov on 15/09/2011.
//  Copyright 2011 Sirius Lab Ltd. All rights reserved.
//

#import "GraphView.h"

@implementation GraphView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // Draw the background image
    UIImage *image = [UIImage imageNamed:@"background.png"];    
	CGRect imageRect = CGRectMake(0, 0, image.size.width, image.size.height);
    CGContextDrawImage(context, imageRect, image.CGImage);
    
    CGContextSetLineWidth(context, 0.6);
	CGContextSetStrokeColorWithColor(context, [[UIColor lightGrayColor] CGColor]);
    CGFloat dash[] = {2.0, 2.0};
    CGContextSetLineDash(context, 0.0, dash, 2);
    
    // How many lines?
    int howMany = (kDefaultGraphWidth - kOffsetX) / kStepX;
    
    // Here the lines go
    for (int i = 0; i <= howMany; i++)
    {
        CGContextMoveToPoint(context, kOffsetX + i * kStepX, kGraphTop);
		CGContextAddLineToPoint(context, kOffsetX + i * kStepX, kGraphBottom);
    }
    
    int howManyHorizontal = (kGraphBottom - kGraphTop - kOffsetY) / kStepY;
    for (int i = 0; i <= howManyHorizontal; i++)
    {
        CGContextMoveToPoint(context, kOffsetX, kGraphBottom - kOffsetY - i * kStepY);
		CGContextAddLineToPoint(context, kDefaultGraphWidth, kGraphBottom - kOffsetY - i * kStepY);
    }
    
    CGContextStrokePath(context);
    CGContextSetLineDash(context, 0, NULL, 0); // Remove the dash
}


@end
