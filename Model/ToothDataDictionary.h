//
//  ToothDataDictionary.h
//  DentalChart
//
//  Created by Abrar Peer on 3/07/12.
//  Copyright (c) 2012 PeerLabs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "../Dependencies/SvgToBezier.h"

@interface ToothDataDictionary : NSObject

//http://iphone.galloway.me.uk/iphone-sdktutorials/singleton-classes/
//http://cartera.me/2011/06/26/better-singletons/

+ (id) sharedToothDataDictionary;

//- (SvgToBezier *) getSvgToBezierWithKey: (id) forToothKey;

- (UIBezierPath *) getUIBezierWithKey: (id) forToothKey;

- (CGRect) getPathBounds: (id) forToothKey;

- (CGSize) getDefaultSize: (id) forToothKey;

- (BOOL) validateKeyWithTag: (id) toothTag;

@end
