//
//  ChartView.m
//  DentalChart
//
//  Created by Abrar Peer on 3/28/12.
//  Copyright (c) 2012 PeerLabs. All rights reserved.
//

#import "ChartView.h"

@implementation ChartView

- (void) setup {
    
    self.contentMode = UIViewContentModeRedraw;
}

- (void) awakeFromNib {
    
    [self setup];
    
}

- (id) initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    
    if (self) {
        
        [self setup];
        
    }
    
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    
    if ((self = [super initWithCoder:aDecoder])) {
        
        [self setup];
        
    }
    
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    //Drawing code
    
    //Draw Guide Lines:
    [self drawGuides:rect];
    
   
    
    // instantiate tooth111
    // default: tooth111 CGrect
 
   
       
//    //Overide for testing
//    rect.origin.x = 307.456;
//    rect.origin.y = 543.581;
//    rect.size.width = 50;
//    rect.size.height = 75;
    
    ToothButton *toothA = [[ToothButton alloc] initWithTooth:101];
    ToothButton *toothB = [[ToothButton alloc] initWithTooth:102];
    ToothButton *toothC = [[ToothButton alloc] initWithTooth:103];
    ToothButton *toothD = [[ToothButton alloc] initWithTooth:104];
    ToothButton *toothE = [[ToothButton alloc] initWithTooth:105];
    ToothButton *toothF = [[ToothButton alloc] initWithTooth:106];
    ToothButton *toothG = [[ToothButton alloc] initWithTooth:107];
    ToothButton *toothH = [[ToothButton alloc] initWithTooth:108];
    ToothButton *toothI = [[ToothButton alloc] initWithTooth:109];
    ToothButton *toothJ = [[ToothButton alloc] initWithTooth:110];
    ToothButton *toothK = [[ToothButton alloc] initWithTooth:111];
   
//    ToothButton *toothL = [[ToothButton alloc] initWithTooth:201];
//    ToothButton *toothM = [[ToothButton alloc] initWithTooth:202];
//    ToothButton *toothN = [[ToothButton alloc] initWithTooth:203];
//    ToothButton *toothO = [[ToothButton alloc] initWithTooth:204];
//    ToothButton *toothP = [[ToothButton alloc] initWithTooth:205];
//    ToothButton *toothQ = [[ToothButton alloc] initWithTooth:206];
//    ToothButton *toothR = [[ToothButton alloc] initWithTooth:207];
//    ToothButton *toothS = [[ToothButton alloc] initWithTooth:208];
//    ToothButton *toothT = [[ToothButton alloc] initWithTooth:209];
//    ToothButton *toothU = [[ToothButton alloc] initWithTooth:210];
//    ToothButton *toothV = [[ToothButton alloc] initWithTooth:211];

//    [toothA.currentTooth setPortraitRectOrigin:200 :0];
//    [toothB.currentTooth setPortraitRectOrigin:200 :100.00];
//    [toothC.currentTooth setPortraitRectOrigin:200 :200.00];
//    [toothD.currentTooth setPortraitRectOrigin:200 :300.00];
//    [toothE.currentTooth setPortraitRectOrigin:200 :400.00];
//    [toothF.currentTooth setPortraitRectOrigin:200 :500.00];
//    [toothG.currentTooth setPortraitRectOrigin:200 :600.00];
//    [toothH.currentTooth setPortraitRectOrigin:200 :700.00];
//    [toothI.currentTooth setPortraitRectOrigin:200 :800.00];
//    [toothJ.currentTooth setPortraitRectOrigin:200 :900.00];
//    [toothK.currentTooth setPortraitRectOrigin:209 :18.00];
 
    [toothA drawRect];
    [toothB drawRect];
    [toothC drawRect];
    [toothD drawRect];
    [toothE drawRect];
    [toothF drawRect];
    [toothG drawRect];
    [toothH drawRect];
    [toothI drawRect];
    [toothJ drawRect];
    [toothK drawRect];
    
//    [toothL drawRect];
//    [toothM drawRect];
//    [toothN drawRect];
//    [toothO drawRect];
//    [toothP drawRect];
//    [toothQ drawRect];
//    [toothR drawRect];
//    [toothS drawRect];
//    [toothT drawRect];
//    [toothU drawRect];
//    [toothV drawRect];
 

    
}

-(void) drawGuides:(CGRect) rect {
    
    [self drawHorizontalGuides:rect];
    [self drawVerticalGuides:rect];
    
    
}

-(void) drawVerticalGuides: (CGRect) rect {
    
    CGPoint originV = CGPointMake(0, 0);
    CGPoint midpointV = CGPointMake(rect.size.width /2, originV.y);
    CGPoint quaterV = CGPointMake(midpointV.x/2, originV.y);
    CGPoint eighthV = CGPointMake(quaterV.x /2, originV.y);
    CGPoint threeEighthV =  CGPointMake(quaterV.x + eighthV.x, originV.y);
    CGPoint fiveEighthV = CGPointMake(midpointV.x + eighthV.x, originV.y);
    CGPoint threeQuaterV = CGPointMake(midpointV.x + quaterV.x, 0);
    CGPoint sevenEighthV = CGPointMake(midpointV.x + quaterV.x + eighthV.x, originV.y);
    CGPoint finalV = CGPointMake(rect.size.width, originV.y);
    float legnthOfLine = rect.size.height;
    
    
    NSLog(@"@Debug: Vertical Eighth (%f ,%f)", eighthV.x, eighthV.y);
    NSLog(@"@Debug: Vertical Quater (%f ,%f)", quaterV.x, quaterV.y);
    NSLog(@"@Debug: Vertical 3/8th (%f ,%f)", threeEighthV.x, threeEighthV.y);
    NSLog(@"@Debug: Vertical Midpoint (%f ,%f)", midpointV.x, midpointV.y);
    NSLog(@"@Debug: Vertical 5/8th (%f ,%f)", fiveEighthV.x, fiveEighthV.y);
    NSLog(@"@Debug: Vertical 3rd Quater (%f ,%f)", threeQuaterV.x, threeQuaterV.y);
    NSLog(@"@Debug: Vertical 7/8th (%f ,%f)", sevenEighthV.x, sevenEighthV.y);
    NSLog(@"@Debug: Final Vertical (%f ,%f)", finalV.x, finalV.y);
    NSLog(@"Height is %f", legnthOfLine);
    
    // Drawing code
    [self drawVerticalLineAtPoint:originV :legnthOfLine];
    //[self drawVerticalLineAtPoint:eighthV :height];
    //[self drawVerticalLineAtPoint:quaterV :legnthOfLine];
    //[self drawVerticalLineAtPoint:threeEighthV :height];
    [self drawVerticalLineAtPoint:midpointV :legnthOfLine];
    //[self drawVerticalLineAtPoint:fiveEighthV :height];
    //[self drawVerticalLineAtPoint:threeQuaterV :legnthOfLine];
    //[self drawVerticalLineAtPoint:sevenEighthV :height];
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


-(void) drawHorizontalGuides: (CGRect) rect {
    
    CGPoint originH = CGPointMake(0, 0);
    CGPoint midpointH = CGPointMake(originH.x, rect.size.height /2);
    CGPoint quaterH = CGPointMake(originH.x, midpointH.y/2);
    CGPoint eighthH = CGPointMake(originH.x, quaterH.y /2);
    CGPoint threeEighthH =  CGPointMake(originH.x, quaterH.y + eighthH.y);
    CGPoint fiveEighthH = CGPointMake(originH.x, midpointH.y + eighthH.y);
    CGPoint threeQuaterH = CGPointMake(originH.x, midpointH.y + quaterH.y);
    CGPoint sevenEighthH = CGPointMake(originH.x, midpointH.y + quaterH.y + eighthH.y);
    CGPoint finalH = CGPointMake(originH.x, rect.size.height);
    float legnthOfLine = rect.size.width;
    
    
    NSLog(@"@Debug: Horizontal Eighth (%f ,%f)", eighthH.x, eighthH.y);
    NSLog(@"@Debug: Horizontal Quater (%f ,%f)", quaterH.x, quaterH.y);
    NSLog(@"@Debug: Horizontal 3/8th (%f ,%f)", threeEighthH.x, threeEighthH.y);
    NSLog(@"@Debug: Horizontal Midpoint (%f ,%f)", midpointH.x, midpointH.y);
    NSLog(@"@Debug: Horizontal 5/8th (%f ,%f)", fiveEighthH.x, fiveEighthH.y);
    NSLog(@"@Debug: Horizontal 3rd Quater (%f ,%f)", threeQuaterH.x, threeQuaterH.y);
    NSLog(@"@Debug: Horizontal 7/8th (%f ,%f)", sevenEighthH.x, sevenEighthH.y);
    NSLog(@"@Debug: Final Horizontal (%f ,%f)", finalH.x, finalH.y);
    NSLog(@"Width is %f", legnthOfLine);
    
    // Drawing code
    [self drawHorizontalLineAtPoint:originH :legnthOfLine];
    //[self drawHorizontalLineAtPoint:eighthH :width];
    //[self drawHorizontalLineAtPoint:quaterH :legnthOfLine];
    //[self drawHorizontalLineAtPoint:threeEighthH :width];
    [self drawHorizontalLineAtPoint:midpointH :legnthOfLine];
    //[self drawHorizontalLineAtPoint:fiveEighthH :width];
    //[self drawHorizontalLineAtPoint:threeQuaterH :legnthOfLine];
    //[self drawHorizontalLineAtPoint:sevenEighthH :width];
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

-(void) drawGlyph {
    
    //set Color
    
    //Setup Context
    
    //set stroke width
    
    //add shit to Context
    
    
    //pop Context
    
    
}



@end
