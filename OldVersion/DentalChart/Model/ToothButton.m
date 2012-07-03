//
//  ToothButton.m
//  DentalChart
//
//  Created by Abrar Peer on 3/31/12.
//  Copyright (c) 2012 PeerLabs. All rights reserved.
//

#import "ToothButton.h"


@implementation ToothButton

//Synthesize Private Getters and Setters
//@synthesize portraitANDLandscapeData = _portraitANDLandscapeData;

//Synthesize Public Getters and Setters
@synthesize currentToothNumber = _currentToothNumber;
@synthesize currentStroke = _currentStroke;
@synthesize currentStrokeColor = _currentStrokeColor;
@synthesize currentFillColor = _currentFillColor;
@synthesize currentTooth = _currentTooth;

//TODO: move following into structs and privatize (Eventually) !!!
//@synthesize path = _path;
//@synthesize pathData = _pathData;
//@synthesize xPosition = _xPosition;
//@synthesize yPosition = _yPosition;
//@synthesize width = _width;
//@synthesize height = _height;


//Overidden External Getters and Setters (for initial state)

- (NSNumber *)currentToothNumber {
    
    if (!_currentToothNumber) {
        _currentToothNumber = [[NSNumber alloc] initWithInt:111];
    }
    
    return _currentToothNumber;
}

- (ToothData *) currentTooth {
    
    if (!_currentTooth) {
        
        _currentTooth = [[ToothData alloc] initWithToothNumber:self.currentToothNumber.intValue];
    }
    
    return _currentTooth;
    
}

- (NSNumber *)currentStroke {
    
    if (!_currentStroke) {
        _currentStroke = [[NSNumber alloc] initWithFloat:5.0];
    }
    
    return _currentStroke;
}

- (UIColor *) currentStrokeColor {
    
    if (!_currentStrokeColor) {
        _currentStrokeColor = [UIColor blueColor];
                        
}
    
    return _currentStrokeColor;
}

- (UIColor *) currentFillColor {
    
    if (!_currentFillColor) {
        _currentFillColor = [UIColor blueColor];
    }
    
    return _currentFillColor;
}



//Overriden Internal Getters and Setters (for initial state)

//Default out-of-thebox constructor
- (id)initWithFrame:(CGRect)frame
{
    
    self = [super initWithFrame:frame];
    
    if (self) {
        
        self.currentToothNumber = [[NSNumber alloc] initWithInt:111];
        self.currentTooth = [[ToothData alloc] initWithToothNumber:self.currentToothNumber.intValue];
        self.currentStroke = [[NSNumber alloc] initWithFloat:5.0];
        self.currentStrokeColor = [UIColor blueColor];
        self.currentFillColor = [UIColor blackColor];
              
    }
    return self;
}

- (id)initWithTooth:(int)toothInt {
    
    self = [super initWithFrame:CGRectMake(0, 0, 100, 100)];
    
    if (self) {
    
        self.currentToothNumber = [[NSNumber alloc] initWithInt:toothInt];
        self.currentTooth = [[ToothData alloc] initWithToothNumber:self.currentToothNumber.intValue];
        self.currentStroke = [[NSNumber alloc] initWithFloat:3.0];
        self.currentStrokeColor = [UIColor blueColor];
        self.currentFillColor = [UIColor blackColor];
        
    }
    
    return self;
    
}

/*
  ----------------------------------
  Drawing, Moving & Scaling methods.
  ----------------------------------

*/



// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    
    //Setup Context
    CGContextRef context = UIGraphicsGetCurrentContext();
    UIGraphicsPushContext(context);

    
    CGContextSetFillColorWithColor(context, self.currentFillColor.CGColor);
    CGContextSetStrokeColorWithColor(context, self.currentStrokeColor.CGColor);
    CGContextSetLineWidth(context, self.currentStroke.floatValue);
    
    //create path
    
//    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithCGPath:self.currentTooth.portraitPath.CGPath];
//    
//    [bezierPath applyTransform:CGAffineTransformMakeScale(
    
    CGContextBeginPath(context);
    
    CGContextAddPath(context, self.currentTooth.portraitPath.CGPath);
                                
    CGContextClosePath(context);
    
    CGRect boundRect = CGContextGetPathBoundingBox(context);
    NSLog(@"%@ has been drawn @(%f, %f) with a size of (%f, %f)", self.currentTooth.key, boundRect.origin.x, boundRect.origin.y, boundRect.size.width, boundRect.size.height);
    
    //Drawing
    
    
    
    
    //[[UIColor blueColor] setStroke];
    CGContextStrokePath(context);
    CGContextFillPath(context);
    CGContextDrawPath(context, kCGPathFillStroke);
   
    
    //Pop Context
    UIGraphicsPopContext();
    
}

- (void) drawRect
{

    CGRect rect = self.currentTooth.portraitRect;
    NSLog(@"%@ has a request to be drawn @(%f, %f) with a size of (%f, %f)", self.currentTooth.key, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
    [self drawRect:rect];

}

- (NSString *) description {
    
    return [NSString stringWithFormat:@"\nTooth Ref Number:\t\t %@ \nLandscape Rect:\t\t\t origin(%f, %f) size(%f, %f)\nPortrait Rect:\t\t\t origin(%f, %f) size(%f, %f)\nLandscape Path Data:\t\t\t %@\nPortrait Path Data: %@\nStroke Width:\t\t\t%f\nStroke Color:\t\t\t%@\nFill Color: \t\t\t %@",self.currentTooth.key, self.currentTooth.landscapeRect.origin.x, self.currentTooth.landscapeRect.origin.y, self.currentTooth.landscapeRect.size.width, self.currentTooth.landscapeRect.size.height, self.currentTooth.portraitRect.origin.x, self.currentTooth.portraitRect.origin.y, self.currentTooth.portraitRect.size.width, self.currentTooth.portraitRect.size.height, self.currentTooth.landscapePath.description, self.currentTooth.portraitPath.description, self.currentStroke.floatValue, self.currentStrokeColor.description, self.currentFillColor.description];
    
}


@end
