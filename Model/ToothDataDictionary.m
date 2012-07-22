//
//  ToothDataDictionary.m
//  DentalChart
//
//  Created by Abrar Peer on 3/07/12.
//  Copyright (c) 2012 PeerLabs. All rights reserved.
//

#import "ToothDataDictionary.h"

@interface ToothDataDictionary()

@property (nonatomic, strong) NSDictionary *pathDictionary;
@property (nonatomic, strong) NSDictionary *sizeDictionary;

@end

@implementation ToothDataDictionary

@synthesize pathDictionary = _pathDictionary;
@synthesize sizeDictionary = _sizeDictionary;

#pragma mark Singleton Methods

+ (id) sharedToothDataDictionary {
    
    static ToothDataDictionary *sharedToothdataDictionary = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedToothdataDictionary = [[self alloc] init];
    });
    
    return sharedToothdataDictionary;
    
}

- (NSDictionary *) getAllTeethPathData {
    
    
    // 101 - 111 (portrait)
    UIBezierPath *bezierP101 = [self buildPath:@"p101"];
    UIBezierPath *bezierP102 = [self buildPath:@"p102"];
    UIBezierPath *bezierP103 = [self buildPath:@"p103"];
    UIBezierPath *bezierP104 = [self buildPath:@"p104"];
    UIBezierPath *bezierP105 = [self buildPath:@"p105"];
    UIBezierPath *bezierP106 = [self buildPath:@"p106"];
    UIBezierPath *bezierP107 = [self buildPath:@"p107"];
    UIBezierPath *bezierP108 = [self buildPath:@"p108"];
    UIBezierPath *bezierP109 = [self buildPath:@"p109"];
    UIBezierPath *bezierP110 = [self buildPath:@"p110"];
    UIBezierPath *bezierP111 = [self buildPath:@"p111"];
    
    // 201 - 211 (portrait)    
    UIBezierPath *bezierP201 = [self buildPath:@"p201"];
    UIBezierPath *bezierP202 = [self buildPath:@"p202"];
    UIBezierPath *bezierP203 = [self buildPath:@"p203"];
    UIBezierPath *bezierP204 = [self buildPath:@"p204"];
    UIBezierPath *bezierP205 = [self buildPath:@"p205"];
    UIBezierPath *bezierP206 = [self buildPath:@"p206"];
    UIBezierPath *bezierP207 = [self buildPath:@"p207"];
    UIBezierPath *bezierP208 = [self buildPath:@"p208"];
    UIBezierPath *bezierP209 = [self buildPath:@"p209"];
    UIBezierPath *bezierP210 = [self buildPath:@"p210"];
    UIBezierPath *bezierP211 = [self buildPath:@"p211"];
    
    NSDictionary *allTeethData = [[NSDictionary alloc] initWithObjectsAndKeys:  bezierP101, @"p101", 
                                                                                bezierP102, @"p102", 
                                                                                bezierP103, @"p103", 
                                                                                bezierP104, @"p104", 
                                                                                bezierP105, @"p105", 
                                                                                bezierP106, @"p106", 
                                                                                bezierP107, @"p107", 
                                                                                bezierP108, @"p108", 
                                                                                bezierP109, @"p109", 
                                                                                bezierP110, @"p110", 
                                                                                bezierP111, @"p111", 
                                                                                bezierP201, @"p201", 
                                                                                bezierP202, @"p202", 
                                                                                bezierP203, @"p203", 
                                                                                bezierP204, @"p204", 
                                                                                bezierP205, @"p205", 
                                                                                bezierP206, @"p206", 
                                                                                bezierP207, @"p207", 
                                                                                bezierP208, @"p208", 
                                                                                bezierP209, @"p209", 
                                                                                bezierP210, @"p210", 
                                                                                bezierP211, @"p211", 
                                                                                nil];
    
    return allTeethData;   
    
}

- (NSDictionary *) getAllTeethSizeData {
    
    // 101 - 111 (portrait)
    NSValue *sizeP101 = [NSValue valueWithCGSize: CGSizeMake(31, 18)];
    NSValue *sizeP102 = [NSValue valueWithCGSize: CGSizeMake(37, 24)];
    NSValue *sizeP103 = [NSValue valueWithCGSize: CGSizeMake(26, 29)];
    NSValue *sizeP104 = [NSValue valueWithCGSize: CGSizeMake(30, 26)];
    NSValue *sizeP105 = [NSValue valueWithCGSize: CGSizeMake(17, 13)];
    NSValue *sizeP106 = [NSValue valueWithCGSize: CGSizeMake(60, 81)];
    NSValue *sizeP107 = [NSValue valueWithCGSize: CGSizeMake(65, 65)];
    NSValue *sizeP108 = [NSValue valueWithCGSize: CGSizeMake(65, 65)];
    NSValue *sizeP109 = [NSValue valueWithCGSize: CGSizeMake(63, 65)];
    NSValue *sizeP110 = [NSValue valueWithCGSize: CGSizeMake(62, 74)];
    NSValue *sizeP111 = [NSValue valueWithCGSize: CGSizeMake(50, 73)];
    
    // 201 - 211 (portrait)
    NSValue *sizeP201 = [NSValue valueWithCGSize: CGSizeMake(31, 18)];
    NSValue *sizeP202 = [NSValue valueWithCGSize: CGSizeMake(37, 24)];
    NSValue *sizeP203 = [NSValue valueWithCGSize: CGSizeMake(26, 29)];
    NSValue *sizeP204 = [NSValue valueWithCGSize: CGSizeMake(30, 26)];
    NSValue *sizeP205 = [NSValue valueWithCGSize: CGSizeMake(17, 13)];
    NSValue *sizeP206 = [NSValue valueWithCGSize: CGSizeMake(60, 81)];
    NSValue *sizeP207 = [NSValue valueWithCGSize: CGSizeMake(65, 65)];
    NSValue *sizeP208 = [NSValue valueWithCGSize: CGSizeMake(65, 65)];
    NSValue *sizeP209 = [NSValue valueWithCGSize: CGSizeMake(63, 65)];
    NSValue *sizeP210 = [NSValue valueWithCGSize: CGSizeMake(62, 74)];
    NSValue *sizeP211 = [NSValue valueWithCGSize: CGSizeMake(50, 73)];
    
    NSDictionary *allTeethData = [[NSDictionary alloc]initWithObjectsAndKeys:   sizeP101, @"p101",
                                                                                sizeP102, @"p102",
                                                                                sizeP103, @"p103",
                                                                                sizeP104, @"p104",
                                                                                sizeP105, @"p105",
                                                                                sizeP106, @"p106",
                                                                                sizeP107, @"p107",
                                                                                sizeP108, @"p108",
                                                                                sizeP109, @"p109",
                                                                                sizeP110, @"p110",
                                                                                sizeP111, @"p111",
                                                                                sizeP201, @"p201",
                                                                                sizeP202, @"p202",
                                                                                sizeP203, @"p203",
                                                                                sizeP204, @"p204",
                                                                                sizeP205, @"p205",
                                                                                sizeP206, @"p206",
                                                                                sizeP207, @"p207",
                                                                                sizeP208, @"p208",
                                                                                sizeP209, @"p209",
                                                                                sizeP210, @"p210",
                                                                                sizeP211, @"p211",
                                                                                nil];
    
    return allTeethData;
    
}

- (id) init {
    
    if(self = [super init]) {
        
        self.pathDictionary = [self getAllTeethPathData];
        self.sizeDictionary = [self getAllTeethSizeData];
        
    }
    
    return self;
}

- (UIBezierPath *) getUIBezierWithKey:(id)forToothKey {
    
    if ([self validateKeyWithTag:forToothKey]) {
            
        id queriedObject = [self.pathDictionary objectForKey:forToothKey];
        
        if ([queriedObject isKindOfClass:[UIBezierPath class]]) {
            
            return queriedObject;
            
        } else {
         
            return nil;
            
        }
            
    } else {
            
            return nil;
    }
    
}

- (CGRect) getPathBounds:(id)forToothKey {
    
    if ([self validateKeyWithTag:forToothKey]) {
        
        UIBezierPath *queriedObject = [self getUIBezierWithKey:forToothKey];
        
        if (queriedObject) {
            
            return queriedObject.bounds;
            
        } else {
            
            return CGRectNull;
            
        } 
        
    } else {
        
        return CGRectNull;
        
    }
    
}

- (BOOL) validateKeyWithTag:(id)toothTag {
    
    if ([toothTag isKindOfClass:[NSString class]]) {
        
        NSString *key = [[NSString alloc] initWithString:toothTag];
        
        if (key && ([key hasPrefix:@"p"] || [key hasPrefix:@"l"]) && key.length == 4) {
            
            NSString *toothID = [key substringFromIndex:1];
            
            int intToothID = toothID.intValue;
            
            if ((intToothID > 100 && intToothID < 112) || (intToothID > 200 && intToothID < 212) || (intToothID > 300 && intToothID < 312) || (intToothID > 400 && intToothID < 412)) {
                
                return YES;
                
            } else {
                
                return NO;
                
            }
            
        } else {
            
            return NO;
            
        }
        
        
    } else {
        
        return NO;
        
    }
        
}

- (UIBezierPath *) buildPath: (NSString *) forToothKey {
    
    if ([self validateKeyWithTag:forToothKey]) {
        
        if ([forToothKey isEqualToString:@"p101"]) {
            
            CGMutablePathRef pPath_0 = CGPathCreateMutable();
            CGPathMoveToPoint(pPath_0, NULL, 28.86,6.95);
            CGPathAddCurveToPoint(pPath_0, NULL, 23.66,1.72,13.70,0.25,7.09,3.54);
            CGPathAddCurveToPoint(pPath_0, NULL, -3.15,8.64,3.66,10.22,10.77,14.39);
            CGPathAddCurveToPoint(pPath_0, NULL, 18.22,18.75,26.67,14.24,28.86,6.95);
            CGPathAddLineToPoint(pPath_0, NULL, 28.86,6.95);
            CGPathCloseSubpath(pPath_0);
            
            return [UIBezierPath bezierPathWithCGPath:pPath_0];
            
        }
        
        if ([forToothKey isEqualToString:@"p102"]) {
            
            CGMutablePathRef pPath_0 = CGPathCreateMutable();
            CGPathMoveToPoint(pPath_0, NULL, 3.63,2.99);
            CGPathAddCurveToPoint(pPath_0, NULL, 12.14,2.08,22.91,1.76,29.67,8.10);
            CGPathAddCurveToPoint(pPath_0, NULL, 33.82,11.99,37.15,17.55,30.52,20.85);
            CGPathAddCurveToPoint(pPath_0, NULL, 22.34,24.92,-2.65,11.77,3.63,2.99);
            CGPathAddLineToPoint(pPath_0, NULL, 3.63,2.99);
            CGPathCloseSubpath(pPath_0);
            
            return [UIBezierPath bezierPathWithCGPath:pPath_0];
            
        }
        
        if ([forToothKey isEqualToString:@"p103"]) {
            
            CGMutablePathRef pPath_0 = CGPathCreateMutable();
            CGPathMoveToPoint(pPath_0, NULL, 16.80,9.23);
            CGPathAddCurveToPoint(pPath_0, NULL, 14.18,6.71,11.38,2.00,7.84,2.00);
            CGPathAddCurveToPoint(pPath_0, NULL, -1.91,2.00,2.64,15.53,6.56,19.43);
            CGPathAddCurveToPoint(pPath_0, NULL, 10.94,23.80,15.14,31.30,21.50,24.96);
            CGPathAddCurveToPoint(pPath_0, NULL, 27.80,18.69,20.98,13.71,16.80,9.23);
            CGPathAddLineToPoint(pPath_0, NULL, 16.80,9.23);
            CGPathCloseSubpath(pPath_0);
            
            return [UIBezierPath bezierPathWithCGPath:pPath_0];
            
        }
        
        if ([forToothKey isEqualToString:@"p104"]) {
            
            CGMutablePathRef pPath_0 = CGPathCreateMutable();
            CGPathMoveToPoint(pPath_0, NULL, 27.13,6.38);
            CGPathAddCurveToPoint(pPath_0, NULL, 21.56,-4.71,-4.79,7.75,3.65,16.16);
            CGPathAddCurveToPoint(pPath_0, NULL, 16.73,29.18,28.39,24.96,27.13,6.38);
            CGPathAddCurveToPoint(pPath_0, NULL, 26.70,5.53,27.13,6.38,27.13,6.38);
            CGPathCloseSubpath(pPath_0);
            
            return [UIBezierPath bezierPathWithCGPath:pPath_0];
        
        }
        
        if ([forToothKey isEqualToString:@"p105"]) {
            
            CGMutablePathRef pPath_0 = CGPathCreateMutable();
            CGPathMoveToPoint(pPath_0, NULL, 8.81,2.00);
            CGPathAddCurveToPoint(pPath_0, NULL, -14.29,19.01,30.60,7.93,8.81,2.00);
            CGPathAddLineToPoint(pPath_0, NULL, 8.81,2.00);
            CGPathCloseSubpath(pPath_0);
        
            return [UIBezierPath bezierPathWithCGPath:pPath_0];
        
        }
        
        if ([forToothKey isEqualToString:@"p106"]) {
            
            CGMutablePathRef pPath_0 = CGPathCreateMutable();
            CGPathMoveToPoint(pPath_0, NULL, 50.81,3.15);
            CGPathAddCurveToPoint(pPath_0, NULL, 46.67,3.15,43.04,6.09,38.45,5.79);
            CGPathAddCurveToPoint(pPath_0, NULL, 34.02,5.50,30.09,5.31,25.64,5.77);
            CGPathAddCurveToPoint(pPath_0, NULL, 19.80,6.38,14.15,7.62,8.20,7.81);
            CGPathAddCurveToPoint(pPath_0, NULL, 4.77,7.92,3.00,7.76,3.00,12.02);
            CGPathAddCurveToPoint(pPath_0, NULL, 3.00,21.11,10.72,30.42,12.63,39.48);
            CGPathAddCurveToPoint(pPath_0, NULL, 13.71,44.61,13.28,49.98,16.13,54.65);
            CGPathAddCurveToPoint(pPath_0, NULL, 17.61,57.07,19.77,57.45,21.75,59.32);
            CGPathAddCurveToPoint(pPath_0, NULL, 23.58,61.04,24.83,64.01,25.88,66.23);
            CGPathAddCurveToPoint(pPath_0, NULL, 28.58,71.90,37.43,83.97,44.14,75.80);
            CGPathAddCurveToPoint(pPath_0, NULL, 47.45,71.77,47.87,66.03,50.37,61.46);
            CGPathAddCurveToPoint(pPath_0, NULL, 52.59,57.38,51.23,51.64,53.80,47.79);
            CGPathAddCurveToPoint(pPath_0, NULL, 58.90,40.17,56.03,31.60,56.39,23.21);
            CGPathAddCurveToPoint(pPath_0, NULL, 56.61,18.20,60.78,1.25,50.81,3.15);
            CGPathAddCurveToPoint(pPath_0, NULL, 50.38,3.15,50.81,3.15,50.81,3.15);
            CGPathCloseSubpath(pPath_0);
        
            return [UIBezierPath bezierPathWithCGPath:pPath_0];
        
        }
        
        if ([forToothKey isEqualToString:@"p107"]) {
            
            CGMutablePathRef pPath_0 = CGPathCreateMutable();
            CGPathMoveToPoint(pPath_0, NULL, 51.49,2.00);
            CGPathAddCurveToPoint(pPath_0, NULL, 39.17,4.28,26.33,7.07,13.76,7.09);
            CGPathAddCurveToPoint(pPath_0, NULL, 5.01,7.10,8.30,12.97,7.52,20.30);
            CGPathAddCurveToPoint(pPath_0, NULL, 7.03,24.96,2.43,28.16,2.03,33.30);
            CGPathAddCurveToPoint(pPath_0, NULL, 1.67,37.97,4.74,41.74,7.95,44.94);
            CGPathAddCurveToPoint(pPath_0, NULL, 12.77,49.74,5.03,61.37,14.73,59.61);
            CGPathAddCurveToPoint(pPath_0, NULL, 23.70,57.99,62.59,60.82,62.59,49.62);
            CGPathAddCurveToPoint(pPath_0, NULL, 62.59,39.43,57.04,29.46,57.04,19.01);
            CGPathAddCurveToPoint(pPath_0, NULL, 57.04,12.82,60.06,4.52,51.49,2.00);
            CGPathAddLineToPoint(pPath_0, NULL, 51.49,2.00);
            CGPathCloseSubpath(pPath_0);
        
            return [UIBezierPath bezierPathWithCGPath:pPath_0];
        
        }
        
        if ([forToothKey isEqualToString:@"p108"]) {
            
            CGMutablePathRef pPath_0 = CGPathCreateMutable();
            CGPathMoveToPoint(pPath_0, NULL, 15.34,5.94);
            CGPathAddCurveToPoint(pPath_0, NULL, 6.53,5.94,7.94,16.48,5.73,21.99);
            CGPathAddCurveToPoint(pPath_0, NULL, 2.36,30.39,0.55,35.59,5.79,44.52);
            CGPathAddCurveToPoint(pPath_0, NULL, 7.85,48.04,6.37,52.96,6.37,56.96);
            CGPathAddCurveToPoint(pPath_0, NULL, 6.37,59.31,12.74,65.45,14.59,62.22);
            CGPathAddCurveToPoint(pPath_0, NULL, 16.17,59.47,26.36,60.79,29.00,60.79);
            CGPathAddCurveToPoint(pPath_0, NULL, 34.16,60.79,39.33,59.01,44.35,58.03);
            CGPathAddCurveToPoint(pPath_0, NULL, 52.59,56.43,62.39,57.68,61.99,47.08);
            CGPathAddCurveToPoint(pPath_0, NULL, 61.73,40.11,60.88,33.19,60.62,26.21);
            CGPathAddCurveToPoint(pPath_0, NULL, 60.17,14.30,66.20,3.73,49.92,2.65);
            CGPathAddCurveToPoint(pPath_0, NULL, 38.76,1.91,26.30,4.11,15.34,5.94);
            CGPathAddCurveToPoint(pPath_0, NULL, 14.48,5.94,15.34,5.94,15.34,5.94);
            CGPathCloseSubpath(pPath_0);
        
            return [UIBezierPath bezierPathWithCGPath:pPath_0];
        
        }
        
        if ([forToothKey isEqualToString:@"p109"]) {
            
            CGMutablePathRef pPath_0 = CGPathCreateMutable();
            CGPathMoveToPoint(pPath_0, NULL, 31.77,4.21);
            CGPathAddCurveToPoint(pPath_0, NULL, 28.43,4.40,24.63,4.31,21.53,2.93);
            CGPathAddCurveToPoint(pPath_0, NULL, 16.97,0.92,11.07,4.33,6.16,3.36);
            CGPathAddCurveToPoint(pPath_0, NULL, 6.16,7.88,6.24,12.46,5.74,16.96);
            CGPathAddCurveToPoint(pPath_0, NULL, 5.40,19.94,2.32,22.17,2.32,25.04);
            CGPathAddCurveToPoint(pPath_0, NULL, 2.32,28.21,0.91,29.26,4.01,31.04);
            CGPathAddCurveToPoint(pPath_0, NULL, 8.48,33.61,7.05,43.14,7.00,47.26);
            CGPathAddCurveToPoint(pPath_0, NULL, 6.87,56.60,4.46,62.46,15.55,62.46);
            CGPathAddCurveToPoint(pPath_0, NULL, 23.30,62.46,31.61,60.19,39.35,59.27);
            CGPathAddCurveToPoint(pPath_0, NULL, 47.48,58.30,55.71,60.80,59.47,51.83);
            CGPathAddCurveToPoint(pPath_0, NULL, 62.35,44.94,59.79,35.57,58.45,28.60);
            CGPathAddCurveToPoint(pPath_0, NULL, 56.89,20.43,55.66,12.49,57.33,4.16);
            CGPathAddCurveToPoint(pPath_0, NULL, 58.28,-0.55,34.85,3.86,31.77,4.21);
            CGPathAddLineToPoint(pPath_0, NULL, 31.77,4.21);
            CGPathCloseSubpath(pPath_0);
        
            return [UIBezierPath bezierPathWithCGPath:pPath_0];
        
        }
        
        if ([forToothKey isEqualToString:@"p110"]) {
            
            CGMutablePathRef pPath_0 = CGPathCreateMutable();
            CGPathMoveToPoint(pPath_0, NULL, 46.24,2.76);
            CGPathAddCurveToPoint(pPath_0, NULL, 43.24,4.62,39.55,5.02,36.08,5.41);
            CGPathAddCurveToPoint(pPath_0, NULL, 28.55,6.25,20.93,6.29,13.37,6.18);
            CGPathAddCurveToPoint(pPath_0, NULL, 11.21,11.53,8.70,16.63,5.34,21.33);
            CGPathAddCurveToPoint(pPath_0, NULL, -0.17,29.04,12.50,34.94,8.49,43.51);
            CGPathAddCurveToPoint(pPath_0, NULL, 5.36,50.20,-4.88,70.89,9.38,70.52);
            CGPathAddCurveToPoint(pPath_0, NULL, 21.95,70.18,61.09,76.44,59.98,57.26);
            CGPathAddCurveToPoint(pPath_0, NULL, 59.43,47.70,58.05,38.14,57.14,28.60);
            CGPathAddCurveToPoint(pPath_0, NULL, 56.72,24.20,59.72,14.29,57.39,10.40);
            CGPathAddCurveToPoint(pPath_0, NULL, 55.69,7.57,50.11,0.82,46.24,2.76);
            CGPathAddCurveToPoint(pPath_0, NULL, 46.24,2.76,49.66,1.05,46.24,2.76);
            CGPathCloseSubpath(pPath_0);
        
            return [UIBezierPath bezierPathWithCGPath:pPath_0];
        
        }
        
        if ([forToothKey isEqualToString:@"p111"]) {
            
            CGMutablePathRef pPath_0 = CGPathCreateMutable();
            CGPathMoveToPoint(pPath_0, NULL, 28.0620,2.5880);
            CGPathAddCurveToPoint(pPath_0, NULL, 24.1350,2.0670,22.3910,13.1180,19.2050,14.7060);
            CGPathAddCurveToPoint(pPath_0, NULL, 14.7410,16.9290,12.0080,29.1620,5.9710,29.1620);
            CGPathAddCurveToPoint(pPath_0, NULL, 2.2440,29.1620,2.5290,32.5040,4.0850,34.9670);
            CGPathAddCurveToPoint(pPath_0, NULL, 7.3850,40.1980,8.6460,45.3050,7.7260,51.4880);
            CGPathAddCurveToPoint(pPath_0, NULL, 6.2630,61.3410,-5.0770,70.4040,11.0950,70.4040);
            CGPathAddCurveToPoint(pPath_0, NULL, 27.3570,70.4040,42.7190,71.8080,47.0640,52.7540);
            CGPathAddCurveToPoint(pPath_0, NULL, 48.9370,44.5410,46.1260,32.1620,45.4040,23.6880);
            CGPathAddCurveToPoint(pPath_0, NULL, 44.7500,16.0210,36.5860,3.7200,28.0620,2.5880);
            CGPathAddCurveToPoint(pPath_0, NULL, 25.9540,2.3090,29.6630,2.8010,28.0620,2.5880);
            CGPathCloseSubpath(pPath_0);
            
            return [UIBezierPath bezierPathWithCGPath:pPath_0];
            
        }
        
        if ([forToothKey isEqualToString:@"p201"]) {
            
            CGMutablePathRef pPath_0 = CGPathCreateMutable();
            CGPathMoveToPoint(pPath_0, NULL, 1.88,6.95);
            CGPathAddCurveToPoint(pPath_0, NULL, 7.08,1.72,17.04,0.25,23.65,3.54);
            CGPathAddCurveToPoint(pPath_0, NULL, 33.88,8.64,27.07,10.22,19.96,14.39);
            CGPathAddCurveToPoint(pPath_0, NULL, 12.52,18.75,4.07,14.24,1.88,6.95);
            CGPathAddLineToPoint(pPath_0, NULL, 1.88,6.95);
            CGPathCloseSubpath(pPath_0);
        
            return [UIBezierPath bezierPathWithCGPath:pPath_0];
        
        }
        
        if ([forToothKey isEqualToString:@"p202"]) {
            
            CGMutablePathRef pPath_0 = CGPathCreateMutable();
            CGPathMoveToPoint(pPath_0, NULL, 33.28,2.99);
            CGPathAddCurveToPoint(pPath_0, NULL, 24.77,2.08,14.00,1.76,7.24,8.10);
            CGPathAddCurveToPoint(pPath_0, NULL, 3.09,11.99,-0.24,17.55,6.39,20.85);
            CGPathAddCurveToPoint(pPath_0, NULL, 14.56,24.92,39.56,11.77,33.28,2.99);
            CGPathAddLineToPoint(pPath_0, NULL, 33.28,2.99);
            CGPathCloseSubpath(pPath_0);
        
            return [UIBezierPath bezierPathWithCGPath:pPath_0];
        
        }
        
        if ([forToothKey isEqualToString:@"p203"]) {
        
            CGMutablePathRef pPath_0 = CGPathCreateMutable();
            CGPathMoveToPoint(pPath_0, NULL, 9.25,9.23);
            CGPathAddCurveToPoint(pPath_0, NULL, 11.88,6.71,14.68,2.00,18.22,2.00);
            CGPathAddCurveToPoint(pPath_0, NULL, 27.97,2.00,23.41,15.53,19.50,19.43);
            CGPathAddCurveToPoint(pPath_0, NULL, 15.12,23.80,10.92,31.30,4.56,24.96);
            CGPathAddCurveToPoint(pPath_0, NULL, -1.74,18.69,5.08,13.71,9.25,9.23);
            CGPathAddLineToPoint(pPath_0, NULL, 9.25,9.23);
            CGPathCloseSubpath(pPath_0);
        
            return [UIBezierPath bezierPathWithCGPath:pPath_0];
            
        }
        
        if ([forToothKey isEqualToString:@"p204"]) {
        
            CGMutablePathRef pPath_0 = CGPathCreateMutable();
            CGPathMoveToPoint(pPath_0, NULL, 2.09,6.38);
            CGPathAddCurveToPoint(pPath_0, NULL, 7.66,-4.71,34.01,7.75,25.57,16.16);
            CGPathAddCurveToPoint(pPath_0, NULL, 12.50,29.18,0.83,24.96,2.09,6.38);
            CGPathAddCurveToPoint(pPath_0, NULL, 2.52,5.53,2.09,6.38,2.09,6.38);
            CGPathCloseSubpath(pPath_0);
        
            return [UIBezierPath bezierPathWithCGPath:pPath_0];
            
        }
        
        if ([forToothKey isEqualToString:@"p205"]) {
        
            CGMutablePathRef pPath_0 = CGPathCreateMutable();
            CGPathMoveToPoint(pPath_0, NULL, 8.15,2.00);
            CGPathAddCurveToPoint(pPath_0, NULL, 31.25,19.01,-13.63,7.93,8.15,2.00);
            CGPathAddLineToPoint(pPath_0, NULL, 8.15,2.00);
            CGPathCloseSubpath(pPath_0);
            
            return [UIBezierPath bezierPathWithCGPath:pPath_0];
        }
        
        if ([forToothKey isEqualToString:@"p206"]) {
            
            CGMutablePathRef pPath_0 = CGPathCreateMutable();
            CGPathMoveToPoint(pPath_0, NULL, 9.63,3.15);
            CGPathAddCurveToPoint(pPath_0, NULL, 13.78,3.15,17.40,6.09,21.99,5.79);
            CGPathAddCurveToPoint(pPath_0, NULL, 26.42,5.50,30.35,5.31,34.80,5.77);
            CGPathAddCurveToPoint(pPath_0, NULL, 40.64,6.38,46.30,7.62,52.24,7.81);
            CGPathAddCurveToPoint(pPath_0, NULL, 55.67,7.91,57.44,7.76,57.44,12.02);
            CGPathAddCurveToPoint(pPath_0, NULL, 57.44,21.11,49.73,30.42,47.81,39.48);
            CGPathAddCurveToPoint(pPath_0, NULL, 46.73,44.61,47.16,49.98,44.31,54.65);
            CGPathAddCurveToPoint(pPath_0, NULL, 42.83,57.07,40.67,57.46,38.69,59.32);
            CGPathAddCurveToPoint(pPath_0, NULL, 36.86,61.04,35.61,64.01,34.55,66.23);
            CGPathAddCurveToPoint(pPath_0, NULL, 31.86,71.90,23.01,83.97,16.30,75.80);
            CGPathAddCurveToPoint(pPath_0, NULL, 12.99,71.77,12.57,66.03,10.07,61.46);
            CGPathAddCurveToPoint(pPath_0, NULL, 7.85,57.38,9.22,51.64,6.64,47.79);
            CGPathAddCurveToPoint(pPath_0, NULL, 1.54,40.17,4.41,31.60,4.05,23.21);
            CGPathAddCurveToPoint(pPath_0, NULL, 3.83,18.20,-0.34,1.25,9.63,3.15);
            CGPathAddCurveToPoint(pPath_0, NULL, 10.06,3.15,9.63,3.15,9.63,3.15);
            CGPathCloseSubpath(pPath_0);
        
            return [UIBezierPath bezierPathWithCGPath:pPath_0];
        
        }
        if ([forToothKey isEqualToString:@"p207"]) {
            
            CGMutablePathRef pPath_0 = CGPathCreateMutable();
            CGPathMoveToPoint(pPath_0, NULL, 13.10,2.00);
            CGPathAddCurveToPoint(pPath_0, NULL, 25.42,4.28,38.26,7.07,50.84,7.09);
            CGPathAddCurveToPoint(pPath_0, NULL, 59.59,7.10,56.29,12.97,57.07,20.30);
            CGPathAddCurveToPoint(pPath_0, NULL, 57.56,24.96,62.17,28.16,62.56,33.30);
            CGPathAddCurveToPoint(pPath_0, NULL, 62.92,37.97,59.85,41.74,56.64,44.94);
            CGPathAddCurveToPoint(pPath_0, NULL, 51.82,49.74,59.56,61.37,49.86,59.61);
            CGPathAddCurveToPoint(pPath_0, NULL, 40.89,57.99,2.00,60.82,2.00,49.62);
            CGPathAddCurveToPoint(pPath_0, NULL, 2.00,39.43,7.55,29.46,7.55,19.01);
            CGPathAddCurveToPoint(pPath_0, NULL, 7.55,12.82,4.53,4.52,13.10,2.00);
            CGPathAddLineToPoint(pPath_0, NULL, 13.10,2.00);
            CGPathCloseSubpath(pPath_0);
        
            return [UIBezierPath bezierPathWithCGPath:pPath_0];
        
        }
        
        if ([forToothKey isEqualToString:@"p208"]) {
            
            CGMutablePathRef pPath_0 = CGPathCreateMutable();
            CGPathMoveToPoint(pPath_0, NULL, 49.16,5.94);
            CGPathAddCurveToPoint(pPath_0, NULL, 57.97,5.94,56.56,16.48,58.77,21.99);
            CGPathAddCurveToPoint(pPath_0, NULL, 62.14,30.38,63.95,35.59,58.71,44.52);
            CGPathAddCurveToPoint(pPath_0, NULL, 56.65,48.04,58.13,52.95,58.13,56.96);
            CGPathAddCurveToPoint(pPath_0, NULL, 58.13,59.31,51.76,65.45,49.91,62.22);
            CGPathAddCurveToPoint(pPath_0, NULL, 48.33,59.47,38.14,60.79,35.50,60.79);
            CGPathAddCurveToPoint(pPath_0, NULL, 30.33,60.79,25.17,59.01,20.15,58.03);
            CGPathAddCurveToPoint(pPath_0, NULL, 11.91,56.43,2.11,57.68,2.51,47.08);
            CGPathAddCurveToPoint(pPath_0, NULL, 2.77,40.11,3.62,33.19,3.88,26.21);
            CGPathAddCurveToPoint(pPath_0, NULL, 4.33,14.30,-1.70,3.73,14.59,2.65);
            CGPathAddCurveToPoint(pPath_0, NULL, 25.74,1.91,38.20,4.11,49.16,5.94);
            CGPathAddCurveToPoint(pPath_0, NULL, 50.02,5.94,49.16,5.94,49.16,5.94);
            CGPathCloseSubpath(pPath_0);
        
            return [UIBezierPath bezierPathWithCGPath:pPath_0];
        
        }
        
        if ([forToothKey isEqualToString:@"p209"]) {
        
            CGMutablePathRef pPath_0 = CGPathCreateMutable();
            CGPathMoveToPoint(pPath_0, NULL, 31.01,4.21);
            CGPathAddCurveToPoint(pPath_0, NULL, 34.35,4.40,38.15,4.31,41.25,2.93);
            CGPathAddCurveToPoint(pPath_0, NULL, 45.81,0.91,51.71,4.34,56.62,3.36);
            CGPathAddCurveToPoint(pPath_0, NULL, 56.62,7.88,56.55,12.46,57.05,16.96);
            CGPathAddCurveToPoint(pPath_0, NULL, 57.38,19.94,60.46,22.17,60.46,25.04);
            CGPathAddCurveToPoint(pPath_0, NULL, 60.46,28.21,61.87,29.26,58.77,31.04);
            CGPathAddCurveToPoint(pPath_0, NULL, 54.30,33.61,55.73,43.14,55.78,47.26);
            CGPathAddCurveToPoint(pPath_0, NULL, 55.91,56.60,58.32,62.46,47.23,62.46);
            CGPathAddCurveToPoint(pPath_0, NULL, 39.48,62.46,31.17,60.19,23.43,59.27);
            CGPathAddCurveToPoint(pPath_0, NULL, 15.30,58.30,7.07,60.80,3.31,51.83);
            CGPathAddCurveToPoint(pPath_0, NULL, 0.43,44.94,2.99,35.57,4.33,28.60);
            CGPathAddCurveToPoint(pPath_0, NULL, 5.89,20.43,7.12,12.49,5.45,4.16);
            CGPathAddCurveToPoint(pPath_0, NULL, 4.50,-0.55,27.93,3.86,31.01,4.21);
            CGPathAddLineToPoint(pPath_0, NULL, 31.01,4.21);
            CGPathCloseSubpath(pPath_0);
        
            return [UIBezierPath bezierPathWithCGPath:pPath_0];
        }
        
        if ([forToothKey isEqualToString:@"p210"]) {
            
            CGMutablePathRef pPath_0 = CGPathCreateMutable();
            CGPathMoveToPoint(pPath_0, NULL, 15.76,2.76);
            CGPathAddCurveToPoint(pPath_0, NULL, 18.76,4.62,22.45,5.02,25.93,5.41);
            CGPathAddCurveToPoint(pPath_0, NULL, 33.45,6.26,41.07,6.29,48.63,6.18);
            CGPathAddCurveToPoint(pPath_0, NULL, 50.80,11.53,53.31,16.63,56.67,21.33);
            CGPathAddCurveToPoint(pPath_0, NULL, 62.18,29.04,49.51,34.94,53.52,43.51);
            CGPathAddCurveToPoint(pPath_0, NULL, 56.64,50.20,66.89,70.89,52.62,70.52);
            CGPathAddCurveToPoint(pPath_0, NULL, 40.06,70.18,0.92,76.44,2.02,57.26);
            CGPathAddCurveToPoint(pPath_0, NULL, 2.58,47.70,3.96,38.14,4.87,28.60);
            CGPathAddCurveToPoint(pPath_0, NULL, 5.29,24.20,2.29,14.29,4.62,10.40);
            CGPathAddCurveToPoint(pPath_0, NULL, 6.31,7.57,11.89,0.82,15.76,2.76);
            CGPathAddCurveToPoint(pPath_0, NULL, 15.76,2.76,12.35,1.05,15.76,2.76);
            CGPathCloseSubpath(pPath_0);
        
            return [UIBezierPath bezierPathWithCGPath:pPath_0];
        
        }
        
        if ([forToothKey isEqualToString:@"p211"]) {
            
            CGMutablePathRef pPath_0 = CGPathCreateMutable();
            CGPathMoveToPoint(pPath_0, NULL, 22.1340,2.5880);
            CGPathAddCurveToPoint(pPath_0, NULL, 26.0610,2.0670,27.8050,13.1180,30.9910,14.7060);
            CGPathAddCurveToPoint(pPath_0, NULL, 35.4550,16.9290,38.1870,29.1620,44.2250,29.1620);
            CGPathAddCurveToPoint(pPath_0, NULL, 47.9520,29.1620,47.6670,32.5040,46.1110,34.9670);
            CGPathAddCurveToPoint(pPath_0, NULL, 42.8110,40.1980,41.5500,45.3050,42.4700,51.4880);
            CGPathAddCurveToPoint(pPath_0, NULL, 43.9330,61.3410,55.2730,70.4040,39.1010,70.4040);
            CGPathAddCurveToPoint(pPath_0, NULL, 22.8390,70.4040,7.4770,71.8080,3.1320,52.7540);
            CGPathAddCurveToPoint(pPath_0, NULL, 1.2590,44.5410,4.0700,32.1620,4.7920,23.6880);
            CGPathAddCurveToPoint(pPath_0, NULL, 5.4460,16.0210,13.6100,3.7200,22.1340,2.5880);
            CGPathAddCurveToPoint(pPath_0, NULL, 24.2420,2.3090,20.5330,2.8010,22.1340,2.5880);
            CGPathCloseSubpath(pPath_0);
            
            return [UIBezierPath bezierPathWithCGPath:pPath_0]; 
            
        } else {
            
            return nil;
        
        }
        
    } else {
        
        return nil;
        
    }
    
}

- (CGSize) getDefaultSize: (id) forToothKey {
    
    if ([self validateKeyWithTag:forToothKey]) {
        
        NSValue *queriedObject = [self.sizeDictionary objectForKey:forToothKey];
        
        return [queriedObject CGSizeValue];
        
    } else {
        
        return CGSizeZero;
        
    }
    
}

@end
