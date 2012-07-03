//
//  ToothData.m
//  DentalChart
//
//  Created by Abrar Peer on 4/1/12.
//  Copyright (c) 2012 PeerLabs. All rights reserved.
//

#import "ToothData.h"

@implementation ToothData

@synthesize key = _key;
@synthesize landscapeRect = _landscapeRect;
@synthesize portraitRect = _portraitRect;
@synthesize landscapePath = _landscapePath;
@synthesize portraitPath = _portraitPath;


- (NSString *) key {
    
    if (!_key) {
        
        _key = [[NSString alloc] initWithFormat:@"%s", @"111"];
    
    }
    
    return _key;
}

- (CGRect) landscapeRect {
    
    return _landscapeRect;
    
}

- (CGRect) portraitRect {
    
    return _portraitRect;
    
}

- (UIBezierPath *) landscapePath {
    
    if (!_landscapePath)
    {
        
        _landscapePath = [[UIBezierPath alloc] init];
        
    }
    
    return _landscapePath;
}

- (UIBezierPath *) portraitPath {
    
    if (!_portraitPath) {
        
        _portraitPath = [[UIBezierPath alloc] init];
    }
    
    return _portraitPath;
    
}

- (id) initWithToothNumber: (int) toothRefNumber {
    
    self = [super init];
    
    if (self) {
        
        ToothDataDictionary *data = [[ToothDataDictionary alloc] init];
        
        self.key = [[NSString alloc] initWithFormat:@"%d", toothRefNumber];
        
        id landscapeRect = [data getLandscapeRect:self.key];
        id portraitRect = [data getPortraitRect:self.key];
        
        if ([landscapeRect isKindOfClass:[NSValue class]])
        {
            self.landscapeRect = [landscapeRect CGRectValue];
            
        }
        
        if ([portraitRect isKindOfClass:[NSValue class]])
        {
            self.portraitRect = [portraitRect CGRectValue];
            
        }
        
        id landscapePath = [data getLandscapePath:self.key];
        id portraitPath = [data getPortraitPath:self.key];
        
        if ([landscapePath isKindOfClass:[NSString class]]) {
            
            if (! [@"NOINFO" isEqual:landscapePath]) {
                
                //make your call to svg
                SvgToBezier *bezierConverter = [[SvgToBezier alloc] initFromSVGPathNodeDAttr:landscapePath rect:self.landscapeRect];
                
                self.landscapePath = bezierConverter.bezier;
                CGRect bezierBounds = [bezierConverter.bezier bounds];
                
                NSLog(@"DEBUG: Tooth %@ Landscape Rect has Origin Pt of (%f, %f) & Size of (%f x %f)" , self.key, self.landscapeRect.origin.x, self.landscapeRect.origin.y, self.landscapeRect.size.width, self.landscapeRect.size.height);
                NSLog(@"DEBUG: Tooth %@ Landscape Path Bounds has Origin Pt of (%f, %f) & Size of (%f x %f)" , self.key, bezierBounds.origin.x, bezierBounds.origin.y, bezierBounds.size.width, bezierBounds.size.height);
                NSLog(@"Path Scale is %f" , bezierConverter.pathScale);
                
            }
    
        }
        
        if ([portraitPath isKindOfClass:[NSString class]]) {
            
            if (! [@"NOINFO" isEqual:portraitPath]) {
            
            //make your call to svg
            SvgToBezier *bezierConverter = [[SvgToBezier alloc] initFromSVGPathNodeDAttr:portraitPath rect:self.portraitRect];
            
            self.portraitPath = bezierConverter.bezier;
            CGRect bezierBounds = [bezierConverter.bezier bounds];
                
                CGRect newRect = CGRectMake(self.portraitRect.origin.x, self.portraitRect.origin.y, self.portraitRect.size.width, bezierBounds.size.height);
                
                self.portraitRect = newRect;
            
            NSLog(@"DEBUG: Tooth %@ Portrait Rect has Origin Pt of (%f, %f) & Size of (%f x %f)" , self.key, self.portraitRect.origin.x, self.portraitRect.origin.y, self.portraitRect.size.width, self.portraitRect.size.height);
            NSLog(@"DEBUG: Tooth %@ Portrait Path Bounds has Origin Pt of (%f, %f) & Size of (%f x %f)" , self.key, bezierBounds.origin.x, bezierBounds.origin.y, bezierBounds.size.width, bezierBounds.size.height);
            NSLog(@"Path Scale is %f" , bezierConverter.pathScale);
                
            }

        }
        
    }
    
    //NSLog(@"%@",[self description]);
    
    return self;
}

- (NSString *)description {
    
    return [NSString stringWithFormat:@"\nTooth Ref Number:\t\t %@ \nLandscape Rect:\t\t\t origin(%f, %f) size(%f, %f)\nPortrait Rect:\t\t\t origin(%f, %f) size(%f, %f)",self.key, self.landscapeRect.origin.x, self.landscapeRect.origin.y, self.landscapeRect.size.width, self.landscapeRect.size.height, self.portraitRect.origin.x, self.portraitRect.origin.y, self.portraitRect.size.width, self.portraitRect.size.height];

}

- (void) reDrawPathWith: (CGRect) newRect: (BOOL) forLandscape {
    
    if (forLandscape) {
        
        //set the landscape rect
        self.landscapeRect = newRect;
        
        //redraw the bezier with the new rect
        ToothDataDictionary *data = [[ToothDataDictionary alloc] init];
        
        id landscapePath = [data getLandscapePath:self.key];
        
        if ([landscapePath isKindOfClass:[NSString class]]) {
            
            NSLog(@"Landscape Path Data for tooth %@ = %@", self.key, landscapePath);
            
            //make your call to svg
            SvgToBezier *bezierConverter = [[SvgToBezier alloc] initFromSVGPathNodeDAttr:landscapePath rect:self.landscapeRect];
            
            self.landscapePath = bezierConverter.bezier;
            
        }
        
    }
    else {
        
        //set the landscape rect
        self.portraitRect = newRect;
        
        //redraw the bezier with the new rect
        ToothDataDictionary *data = [[ToothDataDictionary alloc] init];
        
        id portraitPath = [data getPortraitPath:self.key];
        
        if ([portraitPath isKindOfClass:[NSString class]]) {
            
            NSLog(@"Portrait Path Data for tooth %@ = %@", self.key, portraitPath);
            
            //make your call to svg
            SvgToBezier *bezierConverter = [[SvgToBezier alloc] initFromSVGPathNodeDAttr:portraitPath rect:self.portraitRect];
            
            self.portraitPath = bezierConverter.bezier;
            
        }

    }    
    
}

- (void) setLandscapeRectOrigin: (float) originX: (float) originY {
    
    CGRect newRect = CGRectMake(originX, originY, self.landscapeRect.size.width, self.landscapeRect.size.height);
    
    //self.landscapeRect = newRect;
    
    [self reDrawPathWith:newRect :YES];
    
}

- (void) setPortraitRectOrigin: (float) originX: (float) originY {
    
    CGRect newRect = CGRectMake(originX, originY, self.portraitRect.size.width, self.portraitRect.size.height);
    
    //self.portraitRect = newRect;
    
    [self reDrawPathWith:newRect :NO];
    
}

- (void) scaleToothWith: (float) scaleFactor {
    
    CGRect newLandscapeRect = CGRectMake(self.landscapeRect.origin.x, self.landscapeRect.origin.y, scaleFactor * self.landscapeRect.size.width, scaleFactor * self.landscapeRect.size.height);
    
    CGRect newPortraiteRect = CGRectMake(self.portraitRect.origin.x, self.portraitRect.origin.y, scaleFactor * self.portraitRect.size.width, scaleFactor * self.portraitRect.size.height);
    
    self.landscapeRect = newLandscapeRect;
    self.portraitRect = newPortraiteRect;
    
}


@end
