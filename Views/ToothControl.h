//
//  ToothControl.h
//  DentalChart
//
//  Created by Abrar Peer on 8/07/12.
//  Copyright (c) 2012 PeerLabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ToothControl : UIControl

@property (nonatomic, strong) NSString *toothTag;
@property (nonatomic) CGSize initialSize;
@property (nonatomic) CGPoint initialPoint;

- (id) initWithTag:(NSString *) tag:(CGPoint) atPoint;

@end
