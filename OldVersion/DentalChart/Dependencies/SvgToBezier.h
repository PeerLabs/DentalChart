//
//  SvgToBezier.h
//
//  Created by Martin Haywood on 5/9/11.
//  Attribution-ShareAlike 3.0 Unported (CC BY-SA 3.0) license 2011 Ponderwell.
//
//  Cleaned up by Bob Monaghan - Glue Tools LLC 6 November 2011
//


#import <UIKit/UIKit.h>

@interface SvgToBezier : NSObject {
	@private
	CGRect			viewBox;
	float			pathScale;
	UIBezierPath    *bezier;
	CGPoint			lastPoint;
	CGPoint			lastControlPoint;
	BOOL			validLastControlPoint;
	NSCharacterSet  *separatorSet;
	NSCharacterSet  *commandSet;
    
    NSMutableArray  *tokens;
}

@property(nonatomic, readonly) UIBezierPath *bezier;
@property(nonatomic, readonly) float pathScale;

- (id)initFromSVGPathNodeDAttr:(NSString *)attr rect:(CGRect)rect;

- (void)dealloc;

@end
