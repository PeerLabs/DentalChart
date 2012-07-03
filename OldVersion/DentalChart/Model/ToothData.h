//
//  ToothData.h
//  DentalChart
//
//  Created by Abrar Peer on 4/1/12.
//  Copyright (c) 2012 PeerLabs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ToothDataDictionary.h"
#import "../Dependencies/SvgToBezier.h"

@interface ToothData : NSObject

@property (nonatomic, strong) NSString *key;
@property (nonatomic) CGRect landscapeRect;
@property (nonatomic) CGRect portraitRect;
@property (nonatomic) UIBezierPath *landscapePath;
@property (nonatomic) UIBezierPath *portraitPath;

- (id) initWithToothNumber: (int) toothRefNumber;

- (NSString *) description;

- (void) reDrawPathWith: (CGRect) newRect: (BOOL) forLandscape;

- (void) setLandscapeRectOrigin: (float) originX: (float) originY;
- (void) setPortraitRectOrigin: (float) originX: (float) originY;

- (void) scaleToothWith: (float) scaleFactor;


@end
