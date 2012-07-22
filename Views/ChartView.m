//
//  ChartView.m
//  DentalChart
//
//  Created by Abrar Peer on 6/07/12.
//  Copyright (c) 2012 PeerLabs. All rights reserved.
//

#import "ChartView.h"
#import "ToothControl.h"

@interface ChartView()

@property (nonatomic, strong) NSArray *leftQuadrant;
@property (nonatomic, strong) NSArray *rightQuadrant;
@property (nonatomic) float vMidpoint;

@end

@implementation ChartView

@synthesize leftQuadrant = _leftQuadrant;
@synthesize rightQuadrant = _rightQuadrant;
@synthesize vMidpoint = _vMidpoint;

- (NSArray *) leftQuadrant {
    
    if (!_leftQuadrant) {
        
        
        // Set Origin Points for left quadrants
        CGPoint originPoint101 = CGPointMake(325, 870);
        CGPoint originPoint102 = CGPointMake(265, 850);
        CGPoint originPoint103 = CGPointMake(220, 810);
        CGPoint originPoint104 = CGPointMake(195, 680);
        CGPoint originPoint105 = CGPointMake(190, 500);
        CGPoint originPoint106 = CGPointMake(150, 390);
        CGPoint originPoint107 = CGPointMake(150, 320);
        CGPoint originPoint108 = CGPointMake(150, 255);
        CGPoint originPoint109 = CGPointMake(150, 185);
        CGPoint originPoint110 = CGPointMake(150, 115);
        CGPoint originPoint111 = CGPointMake(150, 35);
        
        // init ToothControls
        ToothControl *t101 = [[ToothControl alloc] initWithTag:@"p101" :originPoint101];
        ToothControl *t102 = [[ToothControl alloc] initWithTag:@"p102" :originPoint102];
        ToothControl *t103 = [[ToothControl alloc] initWithTag:@"p103" :originPoint103];
        ToothControl *t104 = [[ToothControl alloc] initWithTag:@"p104" :originPoint104];
        ToothControl *t105 = [[ToothControl alloc] initWithTag:@"p105" :originPoint105];
        ToothControl *t106 = [[ToothControl alloc] initWithTag:@"p106" :originPoint106];
        ToothControl *t107 = [[ToothControl alloc] initWithTag:@"p107" :originPoint107];
        ToothControl *t108 = [[ToothControl alloc] initWithTag:@"p108" :originPoint108];
        ToothControl *t109 = [[ToothControl alloc] initWithTag:@"p109" :originPoint109];
        ToothControl *t110 = [[ToothControl alloc] initWithTag:@"p110" :originPoint110];
        ToothControl *t111 = [[ToothControl alloc] initWithTag:@"p111" :originPoint111];

        NSLog(@"ChartView DEBUG: %@", [t101 description]);
        NSLog(@"ChartView DEBUG: %@", [t102 description]);
        NSLog(@"ChartView DEBUG: %@", [t103 description]);
        NSLog(@"ChartView DEBUG: %@", [t104 description]);
        NSLog(@"ChartView DEBUG: %@", [t105 description]);
        NSLog(@"ChartView DEBUG: %@", [t106 description]);
        NSLog(@"ChartView DEBUG: %@", [t107 description]);
        NSLog(@"ChartView DEBUG: %@", [t108 description]);
        NSLog(@"ChartView DEBUG: %@", [t109 description]);
        NSLog(@"ChartView DEBUG: %@", [t110 description]);
        NSLog(@"ChartView DEBUG: %@", [t111 description]);
                
        _leftQuadrant = [[NSArray alloc] initWithObjects:t101, t102, t103, t104, t105, t106, t107, t108, t109, t110, t111, nil];
        
    }
    
    return _leftQuadrant;
    
}


- (NSArray *) rightQuadrant {
    
    if (!_rightQuadrant) {
        
        NSArray *rightQuadOrigPts = [self calcRightOrigPtsFromLeftQuad:self.leftQuadrant];
        
        // Set Origin Points for left quadrants
        CGPoint originPoint201 = [[rightQuadOrigPts objectAtIndex:0] CGPointValue];
        CGPoint originPoint202 = [[rightQuadOrigPts objectAtIndex:1] CGPointValue];
        CGPoint originPoint203 = [[rightQuadOrigPts objectAtIndex:2] CGPointValue];
        CGPoint originPoint204 = [[rightQuadOrigPts objectAtIndex:3] CGPointValue];
        CGPoint originPoint205 = [[rightQuadOrigPts objectAtIndex:4] CGPointValue];
        CGPoint originPoint206 = [[rightQuadOrigPts objectAtIndex:5] CGPointValue];
        CGPoint originPoint207 = [[rightQuadOrigPts objectAtIndex:6] CGPointValue];
        CGPoint originPoint208 = [[rightQuadOrigPts objectAtIndex:7] CGPointValue];
        CGPoint originPoint209 = [[rightQuadOrigPts objectAtIndex:8] CGPointValue];
        CGPoint originPoint210 = [[rightQuadOrigPts objectAtIndex:9] CGPointValue];
        CGPoint originPoint211 = [[rightQuadOrigPts objectAtIndex:10] CGPointValue];      
        
        // init ToothControls
        ToothControl *t201 = [[ToothControl alloc] initWithTag:@"p201" :originPoint201];
        ToothControl *t202 = [[ToothControl alloc] initWithTag:@"p202" :originPoint202];
        ToothControl *t203 = [[ToothControl alloc] initWithTag:@"p203" :originPoint203];
        ToothControl *t204 = [[ToothControl alloc] initWithTag:@"p204" :originPoint204];
        ToothControl *t205 = [[ToothControl alloc] initWithTag:@"p205" :originPoint205];
        ToothControl *t206 = [[ToothControl alloc] initWithTag:@"p206" :originPoint206];
        ToothControl *t207 = [[ToothControl alloc] initWithTag:@"p207" :originPoint207];
        ToothControl *t208 = [[ToothControl alloc] initWithTag:@"p208" :originPoint208];
        ToothControl *t209 = [[ToothControl alloc] initWithTag:@"p209" :originPoint209];
        ToothControl *t210 = [[ToothControl alloc] initWithTag:@"p210" :originPoint210];
        ToothControl *t211 = [[ToothControl alloc] initWithTag:@"p211" :originPoint211];
        
        _rightQuadrant = [[NSArray alloc] initWithObjects:t201, t202, t203, t204, t205, t206, t207, t208, t209, t210, t211, nil];
        
    }
    
    return _rightQuadrant; 
    
}

- (float) vMidpoint {
    
    if (!_vMidpoint) {
        
        _vMidpoint = self.frame.size.width/2;
        
    }
    
    return _vMidpoint;
    
}

- (void) setup {
    
    self.contentMode = UIViewContentModeRedraw;

}

- (void) awakeFromNib {
    
    [self setup];
    
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        
        [self setup];
        
    }
    
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    
    EnterFunction();
    
    // Drawing code
    [self drawGuides:rect];
      
}
// Drawing Subroutines
- (void)drawGuides:(CGRect) rect {
    
    EnterFunction();
    
    [self drawHorizontalGuides:rect];
    [self drawVerticalGuides:rect];
    
    
}

// Draw Horizontals
-(void) drawHorizontalGuides: (CGRect) rect {
    
    EnterFunction();
    
    // Setup
    CGPoint originH = CGPointMake(0, 0);
    CGPoint midpointH = CGPointMake(originH.x, rect.size.height /2);
    CGPoint finalH = CGPointMake(originH.x, rect.size.height);
    float legnthOfLine = rect.size.width;
    
    // Logging
    NSLog(@"ChartView DEBUG: Horizontal Midpoint (%f ,%f)", midpointH.x, midpointH.y);
    NSLog(@"ChartView DEBUG: Final Horizontal (%f ,%f)", finalH.x, finalH.y);
    NSLog(@"ChartView DEBUG: Width is %f", legnthOfLine);
    
    // Drawing code
    [self drawHorizontalLineAtPoint:originH :legnthOfLine];
    [self drawHorizontalLineAtPoint:midpointH :legnthOfLine];
    [self drawHorizontalLineAtPoint:finalH :legnthOfLine];
    
}

-(void) drawHorizontalLineAtPoint: (CGPoint) atPoint: (float) width {
    
    //set Color
    [[UIColor colorWithRed:255/255 green:204/255 blue:191/255 alpha:0.3] set];
    
    //Setup Context
    CGContextRef context = UIGraphicsGetCurrentContext();
    UIGraphicsPushContext(context);
    
    //set Line Width
    CGContextSetLineWidth(context, 1.0);
    
    //Add Line to Context
    CGContextMoveToPoint(context, atPoint.x, atPoint.y);
    CGContextAddLineToPoint(context, width , atPoint.y);
    
    CGContextStrokePath(context);
    
    //Pop Context
    UIGraphicsPopContext(); 
    
}


// Draw Verticals
-(void) drawVerticalGuides: (CGRect) rect {
    
    // Setup
    CGPoint originV = CGPointMake(0, 0);
    CGPoint midpointV = CGPointMake(rect.size.width /2, originV.y);
    CGPoint finalV = CGPointMake(rect.size.width, originV.y);
    float legnthOfLine = rect.size.height;
    
    
    // Logging
    NSLog(@"ChartView DEBUG: Vertical Midpoint (%f ,%f)", midpointV.x, midpointV.y);
    NSLog(@"ChartView DEBUG: Final Vertical (%f ,%f)", finalV.x, finalV.y);
    NSLog(@"ChartView DEBUG: Height is %f", legnthOfLine);
    
    // Drawing code
    [self drawVerticalLineAtPoint:originV :legnthOfLine];
    [self drawVerticalLineAtPoint:midpointV :legnthOfLine];
    [self drawVerticalLineAtPoint:finalV :legnthOfLine];
    
}

-(void) drawVerticalLineAtPoint: (CGPoint) atPoint: (float) height {
    
    //set Color
    [[UIColor colorWithRed:255/255 green:204/255 blue:191/255 alpha:0.3] set];
    
    //Setup Context
    CGContextRef context = UIGraphicsGetCurrentContext();
    UIGraphicsPushContext(context);
    
    //set Line Width
    CGContextSetLineWidth(context, 1.0);
    
    //set Dashing parameters
    CGFloat dashArray[] = {2,2};
    
    CGContextSetLineDash(context, 0, dashArray, 2);
    
    //Add Line to Context
    CGContextMoveToPoint(context, atPoint.x, atPoint.y);
    CGContextAddLineToPoint(context, atPoint.x, height);
    
    CGContextStrokePath(context);
    
    //Pop Context
    UIGraphicsPopContext();
    
}

- (void) debugAddToothControlFromArray: (NSArray *) arrayToAdd {
    
    EnterFunction();
    
    NSLog(@"ChartView DEBUG: There are %d items to Add\n", [arrayToAdd count]);
    
    NSNumber *arrayIdx = [[NSNumber alloc] initWithInt:0];
    
    for (id object in arrayToAdd) {
        
        if ([object isKindOfClass:[ToothControl class]]) {
            
//            CGRect objectRect = (UIView)object.frame;
            NSLog(@"ChartView DEBUG: Frame Output: ");
            [self addSubview:object];
            
            int value = [arrayIdx intValue];
            arrayIdx = [NSNumber numberWithInt:value+1];
            
        }
        
    }
    
    [self setNeedsDisplay];
    
    
}

- (void) addToothControls {
    
    EnterFunction();
    
    if (self.leftQuadrant.count > 0)
    {
        NSLog(@"ChartView DEBUG: There are %d items to Add from Left Quadrant\n",self.leftQuadrant.count);
        
        NSNumber *arrayIdx = [[NSNumber alloc] initWithInt:0];
        
        for (id object in self.leftQuadrant) {
            
            if ([object isKindOfClass:[ToothControl class]]) {
                
                //CGRect objectRect = (UIView)object.frame;
                NSLog(@"ChartView DEBUG: Frame Output: ");
                [self addSubview:object];
                
                int value = [arrayIdx intValue];
                arrayIdx = [NSNumber numberWithInt:value+1];
                
            }
            
        }
        
    }
    
    if (self.rightQuadrant.count > 0)
    {
        NSLog(@"ChartView DEBUG: There are %d items to Add from Right Quadrant\n",self.rightQuadrant.count);
        
        NSNumber *arrayIdx = [[NSNumber alloc] initWithInt:0];
        
        for (id object in self.rightQuadrant) {
            
            if ([object isKindOfClass:[ToothControl class]]) {
                
                //CGRect objectRect = (UIView)object.frame;
                NSLog(@"ChartView DEBUG: Frame Output: ");
                [self addSubview:object];
                
                int value = [arrayIdx intValue];
                arrayIdx = [NSNumber numberWithInt:value+1];
                
            }
            
        }

    }
    
    
    [self setNeedsDisplay];
    
}

- (NSArray *) calcRightOrigPtsFromLeftQuad: (NSArray *) inputArray {
    
    NSMutableArray *rightQuadOrigPts = [[NSMutableArray alloc] init];
    
    for (id object in inputArray) {
        
        if ([object isKindOfClass:[ToothControl class]]) {
            
            CGPoint objPt = [object initialPoint];
            CGSize objSize = [object initialSize];
            
            [rightQuadOrigPts addObject:[NSValue valueWithCGPoint:CGPointMake(self.vMidpoint + (self.vMidpoint - (objPt.x + objSize.width)), objPt.y)]];
            
        }
        
    }
    
    return rightQuadOrigPts.copy;
    
    
}


@end
