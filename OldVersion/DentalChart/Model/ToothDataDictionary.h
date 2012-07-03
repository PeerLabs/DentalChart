//
//  ToothDataDictionary.h
//  DentalChart
//
//  Created by Abrar Peer on 4/3/12.
//  Copyright (c) 2012 PeerLabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ToothDataDictionary : NSObject

@property (nonatomic) id globalToothPathData;
@property (nonatomic) id globalToothRectData;

- (id) getLandscapePath: (NSString *) forTooth;
- (id) getLandscapeRect: (NSString *) forTooth;
- (id) getPortraitPath: (NSString *) forTooth;
- (id) getPortraitRect: (NSString *) forToothy;



@end
