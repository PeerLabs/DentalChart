//
//  ToothButton.h
//  DentalChart
//
//  Created by Abrar Peer on 3/31/12.
//  Copyright (c) 2012 PeerLabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToothData.h"
#import "../Dependencies/SvgToBezier.h"

@interface ToothButton : UIButton

@property (nonatomic, strong) NSNumber *currentToothNumber;
@property (nonatomic, strong) ToothData *currentTooth;
@property (nonatomic, strong) NSNumber *currentStroke;
@property (nonatomic, strong) UIColor *currentStrokeColor;
@property (nonatomic, strong) UIColor *currentFillColor;

////Eventually privatized.
//@property (nonatomic, strong) NSString *pathData;
//
//
////For OriginPoint
//@property (nonatomic, strong) NSNumber *xPosition;
//@property (nonatomic, strong) NSNumber *yPosition;
//
////For Size
//@property (nonatomic, strong) NSNumber *width;
//@property (nonatomic, strong) NSNumber *height;
- (id)initWithTooth:(int)toothInt;

- (void) drawRect;

- (NSString *) description;

@end
