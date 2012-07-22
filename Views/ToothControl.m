//
//  ToothControl.m
//  DentalChart
//
//  Created by Abrar Peer on 8/07/12.
//  Copyright (c) 2012 PeerLabs. All rights reserved.
//

#import "ToothControl.h"
#import "ToothDataDictionary.h"

@interface ToothControl()

@property (nonatomic, strong) UIBezierPath *toothPath;
@property (nonatomic) CGAffineTransform initialTransformIdentity;

@end

@implementation ToothControl

@synthesize toothTag = _toothTag;
@synthesize toothPath = _toothPath;
@synthesize initialSize = _initialSize;
@synthesize initialPoint = _initialPoint;
@synthesize initialTransformIdentity = _initialTransformIdentity;

// Overridden Setter: toothTag
- (void) setToothTag:(NSString *)toothTag {
    
    ToothDataDictionary *sharedToothDataDictionary = [ToothDataDictionary sharedToothDataDictionary];
    
    if ([sharedToothDataDictionary validateKeyWithTag:toothTag]) {
        
        _toothTag = toothTag;
    
    }
    else {
        
        _toothTag = nil;
    
    }
    
}

// Overridden Setter for Lazy Loading: initialShape
- (void) setToothPath:(UIBezierPath *)toothPath {
    
    if (!toothPath) {
            
        _toothPath = nil;
              
    } 
    else {
        
        _toothPath = toothPath;
        
    }
    
}


// Overridden Getter for Lazy Loading: toothPath

- (UIBezierPath *) toothPath {
    
    if (self.toothTag) {
        
        if (!_toothPath) {
            
            return nil;
        
        } else {
            
            return _toothPath;

        }
        
    } else {
        
        return nil;
        
    }
    
}

- (void) setup {
    
    self.contentMode = UIViewContentModeScaleToFill;
    
}

- (void) awakeFromNib {
    
    [self setup];
    
}


- (id) initWithTag:(NSString *) tag:(CGPoint) atPoint 
{
    
    if (self) {
        
        self.initialPoint = atPoint;
        
        NSLog(@"%@", [self description]);
        
        self = [self initWithTag:tag];
        
    }
    
    return self;
    
}

- (id) initWithTag:(NSString *) tag {
    
    if (self) {
        
        self.toothTag = tag;
        
        if (self.toothTag) { 
            
            ToothDataDictionary *sharedToothDataDictionary = [ToothDataDictionary sharedToothDataDictionary];
            
            if ([sharedToothDataDictionary validateKeyWithTag:self.toothTag]) {
                
                self.toothPath = [sharedToothDataDictionary getUIBezierWithKey:self.toothTag];
                
                self.initialSize = [sharedToothDataDictionary getDefaultSize:self.toothTag];
                
                CGRect initialFrame = CGRectMake(self.initialPoint.x, self.initialPoint.y, self.initialSize.width, self.initialSize.height);
                
                self = [self initWithFrame:initialFrame];
                
                self.initialTransformIdentity = CGAffineTransformIdentity;
                
                self.opaque = NO;
                
                NSLog(@"--------------------------------------");
                NSLog(@"DEBUG: ToothControl[%@]", self.toothTag);
                NSLog(@"DEBUG: ToothPathBounds[%f, %f, %f, %f]", self.toothPath.bounds.origin.x, self.toothPath.bounds.origin.y, self.toothPath.bounds.size.width, self.toothPath.bounds.size.height);
                NSLog(@"DEBUG: ToothControlBounds[%f, %f, %f, %f]", self.bounds.origin.x, self.bounds.origin.y, self.bounds.size.width, self.bounds.size.height);
                NSLog(@"DEBUG: InitialRect[%f, %f, %f, %f]", initialFrame.origin.x, initialFrame.origin.y, initialFrame.size.width, initialFrame.size.height);
                      
                
            }
            
        } else {
            
            self = nil;
            
        }
        
    }
    
    return self;
    
}

- (void)drawRect:(CGRect)rect
{
    
    EnterFunction();
    
    // Drawing code
    
    NSLog(@"DEBUG: Drawing Tooth in RECT[%f, %f, %f, %f]", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
    
    //Setup Context
    CGContextRef context = UIGraphicsGetCurrentContext();
    UIGraphicsPushContext(context);
    
    CGContextSetFillColorWithColor(context, [UIColor clearColor].CGColor);
    CGContextFillRect(context, rect);
       
    //CGContextSetFillColorWithColor(context, [UIColor blackColor].CGColor);
    //CGContextSetStrokeColorWithColor(context, [UIColor blackColor].CGColor);
    CGContextSetLineWidth(context, 2);
    
    //create path
    
    UIBezierPath *bezierPath = self.toothPath;
    
    CGContextBeginPath(context);
    
    CGContextAddPath(context, bezierPath.CGPath);
    
    CGContextClosePath(context);
    
    //    CGRect boundRect = CGContextGetPathBoundingBox(context);
    //    NSLog(@"%@ has been drawn @(%f, %f) with a size of (%f, %f)", self.currentTooth.key, boundRect.origin.x, boundRect.origin.y, boundRect.size.width, boundRect.size.height);
    
    //Drawing
   
    [[UIColor redColor] setStroke];
    CGContextStrokePath(context);
    //CGContextFillPath(context);
    CGContextDrawPath(context, kCGPathStroke);
    
    
    //Pop Context
    UIGraphicsPopContext();
    
    
    
}

- (void) updateSizeFromTouch: (UITouch *) touch
{
    
	EnterFunction();
    
	CGPoint touchPoint = [touch locationInView:self];
    
    CGPoint initialCenter = CGPointMake((self.initialSize.width / 2), (self.initialSize.height / 2));
    
    float   initialRadius =  sqrt(pow(self.initialSize.width/2, 2) + pow(self.initialSize.height/2, 2));
    
    float distance = sqrt(pow(initialCenter.x - touchPoint.x, 2) + pow(initialCenter.y - touchPoint.y, 2));
    
    float percentageToCenter = (distance/initialRadius*100-100)*-1;
        
    float changeFactor = 1+percentageToCenter/100;

    [self scalePath:changeFactor];
    [self setNeedsDisplay];
    [self sendActionsForControlEvents:UIControlEventValueChanged];
    
    /*
     
     DEBUGGING CODE 
     
     //    NSLog(@"######newWidth[%f]",newWidth);
     //    NSLog(@"######newHeight[%f]",newHeight);
     //    NSLog(@"######initialOriginPoint[(%f, %f)]", self.initialRect.origin.x, self.initialRect.origin.y);
     //    NSLog(@"######initialCenter[(%f, %f)]", initialCenter.x, initialCenter.y);
     //    NSLog(@"######newCenter[(%f, %f)]", newCenter.x, newCenter.y);
     
     //    NSLog(@"-----------------------------------");
     //    NSLog(@"DEBUG-> updateSizeFromTouch: MyBounds[(%f, %f, %f, %f)], MyRadius[%f], Touch[%f,%f], Center[%f,%f], DistanceOfTouchFromCenter[%f], PercentageOfDistance[%f], ChangeFactor[%f]", self.bounds.origin.x, self.bounds.origin.y, self.bounds.size.width, self.bounds.size.height, initialRadius, touchPoint.x, touchPoint.y, initialCenter.x, initialCenter.y, distance, percentageToCenter, changeFactor);
     //    NSLog(@"-----------------------------------");
     
     
     
     
     //MY SAMPLE
     
     //2012-06-24 06:59:52.019 ProtoDChart2[76642:f803] -----------------------------------
     //2012-06-24 06:59:52.020 ProtoDChart2[76642:f803] DEBUG-> updateSizeFromTouch: MyBounds[(0.000000, 0.000000, 519.387695, 519.387695)], MyRadius[212.132034], Touch[273.693848,319.693848], Center[150.000000,150.000000], DistanceOfTouchFromCenter[209.990875], PercentageOfDistance[1.009354], ChangeFactor[1.010094]
     //2012-06-24 06:59:52.020 ProtoDChart2[76642:f803] -----------------------------------
     
     
     //    Animate
     //    [NSTimer scheduledTimerWithTimeInterval:_YOUR_TIME_ 
     //                                     target:self
     //                                   selector:@selector(timerFinished:)
     //                                   userInfo:nil
     //                                    repeats:NO];
     
     //	float hue = touchPoint.x / self.frame.size.width;        
     //	float saturation = touchPoint.y / self.frame.size.height;
     
     // Update the color value and change background color
     //	self.value = [UIColor colorWithHue:hue saturation:saturation brightness:1.0f alpha:1.0f];
     //	self.backgroundColor = self.value;
     //	
     
     
     */
    
    
    ExitFunction();
}

- (void) resetSize {
    
    NSLog(@"DEBUG-> resetSize Called!");
    self.transform = self.initialTransformIdentity;
    [self setNeedsDisplay];
    
}

// Continue tracking touch in control
- (BOOL) continueTrackingWithTouch: (UITouch *) touch withEvent: (UIEvent *) event
{
    EnterFunction();
    
	// Test if drag is currently inside or outside
	CGPoint touchPoint = [touch locationInView:self];
	if (CGRectContainsPoint(self.bounds, touchPoint)) {
        //if (CGRectContainsPoint(self.initialRect, touchPoint)) {
		[self sendActionsForControlEvents:UIControlEventTouchDragInside];
        [self updateSizeFromTouch:touch];
    }
	else {
		[self sendActionsForControlEvents:UIControlEventTouchDragOutside];
        [self resetSize];
    }
	
	// Update color value
    
	return YES;
}

// Start tracking touch in control
- (BOOL) beginTrackingWithTouch: (UITouch *) touch withEvent: (UIEvent *) event
{
    EnterFunction();
    
	// Touch Down
	[self sendActionsForControlEvents:UIControlEventTouchDown];
	
	// Update size values
	[self updateSizeFromTouch:touch];
    
	
	return YES;
}

// End tracking touch
- (void) endTrackingWithTouch: (UITouch *)touch withEvent: (UIEvent *)event
{
    
    EnterFunction();
    
	// Test if touch ended inside or outside
    //	CGPoint touchPoint = [touch locationInView:self];
    //	if (CGRectContainsPoint(self.bounds, touchPoint)) {
    //    //if (CGRectContainsPoint(self.initialRect, touchPoint)) {
    //		[self sendActionsForControlEvents:UIControlEventTouchDragInside];
    //        [self updateSizeFromTouch:touch];
    //    }
    //	else {
    //		[self sendActionsForControlEvents:UIControlEventTouchDragOutside];
    //        [self resetSize];
    //    }
	
    [self resetSize];
    
	// Update color value
    
}


// Handle touch cancel
- (void)cancelTrackingWithEvent: (UIEvent *) event
{
    
    EnterFunction();
    
    //	[self sendActionsForControlEvents:UIControlEventTouchCancel];
    
    [self resetSize];
    
}


- (void)dealloc 
{
    
}


- (void) scalePath: (CGFloat) scaleFactor {
    
    EnterFunction();
    
    self.transform = CGAffineTransformMakeScale(scaleFactor, scaleFactor);
    
}


- (NSString *) description {
    
    return [NSString stringWithFormat:@"Tooth: Tag[%@], AtPoint[%f, %f], SizeOf[%f, %f], PathBounds[%f, %f, %f, %f]",self.toothTag, self.initialPoint.x, self.initialPoint.y, self.frame.size.width, self.frame.size.height, self.toothPath.bounds.origin.x, self.bounds.origin.y, self.bounds.size.width, self.bounds.size.height];
    
}



@end
