//
//  ToothDataDictionary.m
//  DentalChart
//
//  Created by Abrar Peer on 4/3/12.
//  Copyright (c) 2012 PeerLabs. All rights reserved.
//

#import "ToothDataDictionary.h"


@interface ToothDataDictionary()

//internal rectData
@property (nonatomic, strong) NSDictionary *internalRectDictionary;

//internal pathData
@property (nonatomic, strong) NSDictionary *internalPathDictionary;

@end


@implementation ToothDataDictionary

@synthesize internalRectDictionary = _internalRectDictionary;
@synthesize internalPathDictionary = _internalPathDictionary;
@synthesize globalToothPathData;
@synthesize globalToothRectData;

- (NSDictionary *) internalRectDictionary {
    
    if (!_internalRectDictionary) {
              
        _internalRectDictionary = [self getAllTeethRect];
         
    }
    
    return _internalRectDictionary;
}
        

- (NSDictionary *) internalPathDictionary {
    
    if (!_internalPathDictionary) {
        
        _internalPathDictionary = [self getAllTeethPathData];
        
    }
    
    return _internalPathDictionary;
    
}

- (id) init {
    
    self = [super init];
    if (self) {
        // Initialization code
        
        [self internalPathDictionary];
        [self internalRectDictionary];
    }
    return self;
    
}

- (id) globalToothPathData {
    
    return [self.internalPathDictionary copy];
}

- (id) globalToothRectData {
    
    return [self.internalRectDictionary copy];
}

- (id) getLandscapePath: (NSString *) forTooth {
    
    NSString *key = [[NSString alloc] initWithString:[@"l" stringByAppendingString:forTooth]];
    
    //    [key stringByAppendingString:forTooth];
    
    id data = [self.globalToothPathData valueForKey:key];
    
    return data;
    
    
}

- (id) getLandscapeRect: (NSString *) forTooth {
    
    NSString *key = [[NSString alloc] initWithString:[@"l" stringByAppendingString:forTooth]];
    
    //    [key stringByAppendingString:forTooth];
    
    id data = [self.globalToothRectData valueForKey:key];
    
    return data;
    
    
}

- (id) getPortraitPath: (NSString *) forTooth {
    
    NSString *key = [[NSString alloc] initWithString:[@"p" stringByAppendingString:forTooth]];
    
    //    [key stringByAppendingString:forTooth];
    
    id data = [self.globalToothPathData valueForKey:key];
    
    return data;
    
    
}

- (id) getPortraitRect: (NSString *) forTooth {
    
    NSString *key = [[NSString alloc] initWithString:[@"p" stringByAppendingString:forTooth]];
    
//    [key stringByAppendingString:forTooth];
    
    id data = [self.globalToothRectData valueForKey:key];
    
    return data;
    
    
}

- (NSDictionary *) getAllTeethPathData {
    
    
    /*
     
     //Tooth 1XX PORTRAIT
     
     */
    
    NSString *tooth101PortraitPathData = [[NSString alloc] initWithString:@"M63.21,12.119c-12.188-12.301-35.521-15.74-51-8c-23.988,11.994-8.035,15.699,8.625,25.5C38.284,39.883,58.077,29.277,63.21,12.119L63.21,12.119z"];
    
//    NSString *tooth101PortraitPathData = [[NSString alloc] initWithString:@"M25.48,0.1c-3.897-0.5-5.596,10.512-8.793,12.114c-4.397,2.202-7.195,14.517-13.19,14.517c-3.698,0-3.397,3.304-1.898,5.806c3.297,5.206,4.496,10.312,3.597,16.52c-1.499,9.811-12.69,18.922,3.397,18.922c16.187,0,31.476,1.401,35.772-17.721c1.898-8.21-0.899-20.624-1.698-29.133C42.067,13.516,33.974,1.202,25.48,0.1C23.382-0.2,27.08,0.3,25.48,0.1z"];
    NSString *tooth102PortraitPathData = [[NSString alloc] initWithString:@"M2.348,1.207c19.942-2.143,45.165-2.91,61,12c9.734,9.164,17.527,22.234,2,30C46.192,52.785-12.355,21.85,2.348,1.207L2.348,1.207z"];
    NSString *tooth103PortraitPathData = [[NSString alloc] initWithString:@"M34.48,16.999c-6.15-5.924-12.713-17-21-17c-22.845,0-12.173,31.826-3,41c10.258,10.258,20.097,27.902,35,13C60.243,39.237,44.25,27.53,34.48,16.999L34.48,16.999z"];
    NSString *tooth104PortraitPathData = [[NSString alloc] initWithString:@"M58.87,11.309c-13.041-26.082-74.781,3.219-55,23C34.496,64.936,61.825,54.992,58.87,11.309C57.87,9.309,58.87,11.309,58.87,11.309z"];
    NSString *tooth105PortraitPathData = [[NSString alloc] initWithString:@"M11,0C-26.4,27.7,46.3,9.6,11,0L11,0z"];
    NSString *tooth106PortraitPathData = [[NSString alloc] initWithString:@"M112,0.35c-9.711,0-18.197,6.924-28.963,6.222c-10.377-0.677-19.583-1.134-30-0.05c-13.685,1.424-26.927,4.356-40.852,4.791C4.154,11.564,0,11.2,0,21.225C0,42.609,18.072,64.5,22.554,85.802c2.54,12.072,1.519,24.703,8.196,35.673c3.469,5.699,8.527,6.602,13.176,10.986c4.292,4.047,7.211,11.039,9.684,16.264c6.311,13.336,27.047,41.711,42.766,22.5c7.746-9.469,8.75-22.984,14.588-33.727c5.213-9.592,2.006-23.104,8.037-32.148c11.943-17.916,5.221-38.079,6.078-57.811C125.592,35.757,135.342-4.107,112,0.35C111,0.35,112,0.35,112,0.35z"];
    NSString *tooth107PortraitPathData = [[NSString alloc] initWithString:@"M115.809-0.532c-28.861,5.355-58.947,11.921-88.4,11.968C6.909,11.469,14.622,25.273,12.808,42.5C11.653,53.475,0.863,61-0.067,73.094c-0.843,10.965,6.352,19.852,13.875,27.375c11.278,11.277-6.842,38.63,15.875,34.5c21.022-3.822,112.125,2.843,112.125-23.5c0-23.963-13-47.414-13-72C128.809,24.913,135.891,5.401,115.809-0.532L115.809-0.532z"];
    NSString *tooth108PortraitPathData = [[NSString alloc] initWithString:@"M12.8,3.4C4,3.4,5.4,14,3.2,19.5C-0.1,27.9-1.9,33.1,3.3,42c2.1,3.5,0.6,8.4,0.6,12.4c0,2.4,6.3,8.5,8.2,5.3c1.6-2.7,11.7-1.4,14.3-1.4c5.1,0,10.3-1.8,15.3-2.8c8.2-1.6,18-0.4,17.6-11c-0.3-7-1.1-13.9-1.4-20.9C57.4,11.8,63.5,1.2,47.2,0.1C36.1-0.6,23.7,1.6,12.8,3.4C11.9,3.4,12.8,3.4,12.8,3.4z"];
    NSString *tooth109PortraitPathData = [[NSString alloc] initWithString:@"M29.7,2.2c-3.3,0.2-7.1,0.1-10.2-1.3C14.9-1.1,9,2.3,4.1,1.4c0,4.5,0.1,9.1-0.4,13.6c-0.3,3-3.4,5.2-3.4,8.1c0,3.2-1.4,4.2,1.7,6c4.5,2.6,3,12.1,3,16.2c-0.1,9.3-2.5,15.2,8.5,15.2c7.7,0,16-2.3,23.7-3.2c8.1-1,16.3,1.5,20-7.4c2.9-6.9,0.3-16.3-1-23.2c-1.6-8.2-2.8-16.1-1.1-24.4C56.1-2.5,32.7,1.9,29.7,2.2L29.7,2.2z"];
    NSString *tooth110PortraitPathData = [[NSString alloc] initWithString:@"M44.1,0.5c-3,1.9-6.7,2.3-10.1,2.6C26.4,4,18.9,4.1,11.3,3.9c-2.2,5.3-4.7,10.4-8,15.1c-5.5,7.7,7.1,13.6,3.1,22.2C3.3,48-6.9,68.7,7.4,68.3c12.5-0.3,51.5,5.9,50.4-13.3c-0.5-9.6-1.9-19.1-2.8-28.7c-0.4-4.4,2.6-14.3,0.3-18.2C53.5,5.3,47.9-1.4,44.1,0.5C44.1,0.5,47.5-1.2,44.1,0.5z"];
    NSString *tooth111PortraitPathData = [[NSString alloc] initWithString:@"M50.9,0.2c-7.8-1-11.3,21.1-17.6,24.3c-8.9,4.4-14.3,28.9-26.4,28.9c-7.4,0-6.9,6.7-3.8,11.6c6.6,10.5,9.1,20.7,7.3,33.1C7.5,117.8-15.1,136,17.1,136c32.4,0,63,2.8,71.6-35.3c3.7-16.4-1.9-41.2-3.3-58.2C84.1,27.1,67.9,2.4,50.9,0.2C46.7-0.4,54.1,0.6,50.9,0.2z"];
    
    
    
    
    
    
    /*
    
    //Tooth 2XX PORTRAIT
  
    */
    
    
    NSString *tooth201PortraitPathData = [[NSString alloc] initWithString:@"M0,5.2c5.2-5.2,15.1-6.7,21.7-3.4c10.2,5.1,3.4,6.7-3.7,10.8C10.6,17,2.2,12.4,0,5.2L0,5.2z"];
    NSString *tooth202PortraitPathData = [[NSString alloc] initWithString:@"M30.5,0.5C22.1-0.4,11.3-0.7,4.6,5.6c-4.1,3.9-7.5,9.5-0.8,12.8C11.9,22.4,36.8,9.3,30.5,0.5L30.5,0.5z"];
    NSString *tooth203PortraitPathData = [[NSString alloc] initWithString:@"M7.2,7.2C9.8,4.7,12.6,0,16.2,0c9.7,0,5.2,13.5,1.3,17.4C13.1,21.8,8.9,29.3,2.5,23C-3.7,16.7,3.1,11.7,7.2,7.2L7.2,7.2z"];
    NSString *tooth204PortraitPathData = [[NSString alloc] initWithString:@"M0.1,4.4c5.5-11.1,31.8,1.4,23.4,9.8C10.5,27.2-1.2,23,0.1,4.4C0.5,3.5,0.1,4.4,0.1,4.4z"];
    NSString *tooth205PortraitPathData = [[NSString alloc] initWithString:@"M6.1,0C29.1,17-15.6,5.9,6.1,0L6.1,0z"];
    NSString *tooth206PortraitPathData = [[NSString alloc] initWithString:@"M5.4,0.1c3.3,0,6.1,2.3,9.8,2.1c3.5-0.2,6.6-0.4,10.1,0c4.6,0.5,9.1,1.5,13.8,1.6c2.7,0.1,4.1,0,4.1,3.3c0,7.2-6.1,14.6-7.6,21.8c-0.9,4.1-0.5,8.3-2.8,12c-1.2,1.9-2.9,2.2-4.4,3.7c-1.4,1.4-2.4,3.7-3.3,5.5C23,54.6,16,64.2,10.7,57.7C8,54.5,7.7,50,5.7,46.3C4,43.1,5.1,38.5,3,35.5C-1,29.5,1.3,22.7,1,16C0.8,12-2.5-1.4,5.4,0.1C5.7,0.1,5.4,0.1,5.4,0.1z"];
    NSString *tooth207PortraitPathData = [[NSString alloc] initWithString:@"M11.1,0C23.4,2.2,36.2,5,48.7,5c8.7,0,5.4,5.9,6.2,13.2c0.5,4.7,5.1,7.9,5.5,13c0.4,4.7-2.7,8.4-5.9,11.6c-4.8,4.8,2.9,16.4-6.8,14.7c-8.9-1.6-47.7,1.2-47.7-10c0-10.2,5.5-20.2,5.5-30.6C5.6,10.8,2.6,2.5,11.1,0L11.1,0z"];
    NSString *tooth208PortraitPathData = [[NSString alloc] initWithString:@"M46.5,3.4c8.8,0,7.4,10.5,9.6,16.1c3.4,8.4,5.2,13.6-0.1,22.5c-2.1,3.5-0.6,8.4-0.6,12.4c0,2.4-6.3,8.5-8.2,5.3c-1.6-2.7-11.7-1.4-14.3-1.4c-5.1,0-10.3-1.8-15.3-2.8c-8.2-1.6-18-0.4-17.6-11c0.3-7,1.1-13.9,1.4-20.9C1.8,11.8-4.2,1.2,12,0.1C23.1-0.6,35.6,1.6,46.5,3.4C47.3,3.4,46.5,3.4,46.5,3.4z"];
    NSString *tooth209PortraitPathData = [[NSString alloc] initWithString:@"M28.9,2.2c3.3,0.2,7.1,0.1,10.2-1.3c4.5-2,10.4,1.4,15.3,0.4c0,4.5-0.1,9.1,0.4,13.6c0.3,3,3.4,5.2,3.4,8.1c0,3.2,1.4,4.2-1.7,6c-4.5,2.6-3,12.1-3,16.2c0.1,9.3,2.5,15.2-8.5,15.2c-7.7,0-16-2.3-23.7-3.2c-8.1-1-16.3,1.5-20-7.4c-2.9-6.9-0.3-16.3,1-23.2c1.6-8.2,2.8-16.1,1.1-24.4C2.5-2.5,25.8,1.9,28.9,2.2L28.9,2.2z"];
    NSString *tooth210PortraitPathData = [[NSString alloc] initWithString:@"M13.7,0.5C9.9-1.4,4.3,5.3,2.5,8.1 C0.2,12,3.2,21.9,2.8,26.3C1.9,35.9,0.5,45.4,0,55c-1.1,19.2,37.9,13,50.4,13.3c14.3,0.4,4.1-20.3,1-27.1 c-4-8.6,8.6-14.5,3.1-22.2c-3.3-4.7-5.8-9.8-8-15.1C38.9,4.1,31.4,4,23.8,3.1C20.4,2.8,16.7,2.4,13.7,0.5 C10.3-1.2,13.7,0.5,13.7,0.5z"];
    NSString *tooth211PortraitPathData = [[NSString alloc] initWithString:@"M22.5,0.1C14,1.2,5.9,13.5,5.3,21.1C4.5,29.6,1.7,42,3.6,50.3C7.9,69.4,23.2,68,39.4,68c16.1,0,4.9-9.1,3.4-18.9c-0.9-6.2,0.3-11.3,3.6-16.5c1.5-2.5,1.8-5.8-1.9-5.8	c-6,0-8.8-12.3-13.2-14.5C28.1,10.6,26.4-0.4,22.5,0.1C20.9,0.3,24.6-0.2,22.5,0.1z"];
    
    
    NSString *tooth301PortraitPathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth302PortraitPathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth303PortraitPathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth304PortraitPathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth305PortraitPathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth306PortraitPathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth307PortraitPathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth308PortraitPathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth309PortraitPathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth310PortraitPathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth311PortraitPathData = [[NSString alloc] initWithString:@"NOINFO"];
    
    
    NSString *tooth401PortraitPathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth402PortraitPathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth403PortraitPathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth404PortraitPathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth405PortraitPathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth406PortraitPathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth407PortraitPathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth408PortraitPathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth409PortraitPathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth410PortraitPathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth411PortraitPathData = [[NSString alloc] initWithString:@"NOINFO"];
    
    //Landscape Data
    NSString *tooth101LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth102LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth103LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth104LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth105LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth106LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth107LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth108LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth109LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth110LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth111LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    
    
    NSString *tooth201LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth202LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth203LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth204LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth205LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth206LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth207LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth208LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth209LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth210LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth211LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    
    
    NSString *tooth301LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth302LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth303LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth304LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth305LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth306LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth307LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth308LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth309LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth310LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth311LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    
    
    NSString *tooth401LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth402LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth403LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth404LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth405LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth406LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth407LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth408LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth409LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth410LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    NSString *tooth411LandscapePathData = [[NSString alloc] initWithString:@"NOINFO"];
    
    NSDictionary *pathDictionary = [[NSDictionary alloc] initWithObjectsAndKeys:tooth101PortraitPathData, @"p101", tooth101LandscapePathData, @"l101", tooth102PortraitPathData, @"p102", tooth102LandscapePathData, @"l102", tooth103PortraitPathData, @"p103", tooth103LandscapePathData, @"l103", tooth104PortraitPathData, @"p104", tooth104LandscapePathData, @"l104",  tooth105PortraitPathData, @"p105", tooth105LandscapePathData, @"l105", tooth106PortraitPathData, @"p106", tooth106LandscapePathData, @"l106", tooth107PortraitPathData, @"p107", tooth107LandscapePathData, @"l107", tooth108PortraitPathData, @"p108", tooth108LandscapePathData, @"l108", tooth109PortraitPathData, @"p109", tooth109LandscapePathData, @"l109", tooth110PortraitPathData, @"p110", tooth110LandscapePathData, @"l110", tooth111PortraitPathData, @"p111",tooth111LandscapePathData, @"l111",tooth201PortraitPathData, @"p201", tooth201LandscapePathData, @"l201", tooth202PortraitPathData, @"p202", tooth202LandscapePathData, @"l202", tooth203PortraitPathData, @"p203", tooth203LandscapePathData, @"l203", tooth204PortraitPathData, @"p204", tooth204LandscapePathData, @"l204",  tooth205PortraitPathData, @"p205", tooth205LandscapePathData, @"l205", tooth206PortraitPathData, @"p206", tooth206LandscapePathData, @"l206", tooth207PortraitPathData, @"p207", tooth207LandscapePathData, @"l207", tooth208PortraitPathData, @"p208", tooth208LandscapePathData, @"l208", tooth209PortraitPathData, @"p209", tooth209LandscapePathData, @"l209", tooth210PortraitPathData, @"p210", tooth210LandscapePathData, @"l210", tooth211PortraitPathData, @"p211",tooth211LandscapePathData, @"l211", tooth301PortraitPathData, @"p301", tooth301LandscapePathData, @"l301", tooth302PortraitPathData, @"p302", tooth302LandscapePathData, @"l302", tooth303PortraitPathData, @"p303", tooth303LandscapePathData, @"l303", tooth304PortraitPathData, @"p304", tooth304LandscapePathData, @"l304",  tooth305PortraitPathData, @"p305", tooth305LandscapePathData, @"l305", tooth306PortraitPathData, @"p306", tooth306LandscapePathData, @"l306", tooth307PortraitPathData, @"p307", tooth307LandscapePathData, @"l307", tooth308PortraitPathData, @"p308", tooth308LandscapePathData, @"l308", tooth309PortraitPathData, @"p309", tooth309LandscapePathData, @"l309", tooth310PortraitPathData, @"p310", tooth310LandscapePathData, @"l310", tooth311PortraitPathData, @"p311",tooth311LandscapePathData, @"l311",tooth401PortraitPathData, @"p401", tooth401LandscapePathData, @"l401", tooth402PortraitPathData, @"p402", tooth402LandscapePathData, @"l402", tooth403PortraitPathData, @"p403", tooth403LandscapePathData, @"l403", tooth404PortraitPathData, @"p404", tooth404LandscapePathData, @"l404",  tooth405PortraitPathData, @"p405", tooth405LandscapePathData, @"l405", tooth406PortraitPathData, @"p406", tooth406LandscapePathData, @"l406", tooth407PortraitPathData, @"p407", tooth407LandscapePathData, @"l407", tooth408PortraitPathData, @"p408", tooth408LandscapePathData, @"l408", tooth409PortraitPathData, @"p409", tooth409PortraitPathData, @"p409", tooth409LandscapePathData, @"l409", tooth410PortraitPathData, @"p410", tooth410LandscapePathData, @"l410",tooth411PortraitPathData, @"p411",tooth411LandscapePathData, @"l411", nil];
    
    return pathDictionary;
    
}

- (NSDictionary *) getAllTeethRect {
    
//    float midpoint = 384.0;
//    float endpoint = 768.0;
    
    // http://iphonedevelopertips.com/cocoa/storing-cgpoint-cgsize-and-cgrect-in-collections-with-nsvalue.html
    
    NSValue *tooth101PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(351, 880, 30, 30)];
    NSValue *tooth102PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(309, 870, 30, 30)];
    NSValue *tooth103PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(279, 847, 30, 30)];
    NSValue *tooth104PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(267, 697, 36, 36)];
    NSValue *tooth105PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(255, 549, 60, 60)];
    NSValue *tooth106PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(223, 454, 60, 60)];
    NSValue *tooth107PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(213, 391, 60, 60)];
    NSValue *tooth108PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(207, 329, 66, 62)];
    NSValue *tooth109PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(207, 259, 62, 60)];
    NSValue *tooth110PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(207, 184, 70, 70)];
    NSValue *tooth111PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(213, 109, 72, 72)];

    NSValue *tooth101LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth102LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth103LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth104LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth105LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth106LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth107LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth108LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth109LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth110LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth111LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    
    NSValue *tooth201PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(384, 880, 30, 30)];
    NSValue *tooth202PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(424, 870, 30, 30)];
    NSValue *tooth203PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(464, 847, 30, 30)];
    NSValue *tooth204PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(473, 697, 36, 36)];
    NSValue *tooth205PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(498, 549, 60, 60)];
    NSValue *tooth206PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(489, 454, 60, 60)];
    NSValue *tooth207PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(492, 391, 60, 60)];
    NSValue *tooth208PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(499, 329, 66, 62)];
    NSValue *tooth209PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(499, 259, 62, 60)];
    NSValue *tooth210PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(501, 184, 70, 70)];
    NSValue *tooth211PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(507, 109, 100, 100)];
    
    NSValue *tooth201LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth202LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth203LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth204LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth205LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth206LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth207LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth208LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth209LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth210LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth211LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    
    NSValue *tooth301PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth301LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth302PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth302LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth303PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth303LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth304PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth304LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth305PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth305LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth306PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth306LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth307PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth307LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth308PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth308LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth309PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth309LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth310PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth310LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth311PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth311LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    
    NSValue *tooth401PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth401LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth402PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth402LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth403PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth403LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth404PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth404LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth405PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth405LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth406PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth406LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth407PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth407LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth408PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth408LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth409PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth409LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth410PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth410LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth411PortraitRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    NSValue *tooth411LandscapeRectValue = [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)];
    
    
    
    NSDictionary *rectDictionary = [[NSDictionary alloc] initWithObjectsAndKeys:tooth101PortraitRectValue, @"p101", tooth101LandscapeRectValue, @"l101", tooth102PortraitRectValue, @"p102", tooth102LandscapeRectValue, @"l102", tooth103PortraitRectValue, @"p103", tooth103LandscapeRectValue, @"l103", tooth104PortraitRectValue, @"p104", tooth104LandscapeRectValue, @"l104",  tooth105PortraitRectValue, @"p105", tooth105LandscapeRectValue, @"l105", tooth106PortraitRectValue, @"p106", tooth106LandscapeRectValue, @"l106", tooth107PortraitRectValue, @"p107", tooth107LandscapeRectValue, @"l107", tooth108PortraitRectValue, @"p108", tooth108LandscapeRectValue, @"l108", tooth109PortraitRectValue, @"p109", tooth109LandscapeRectValue, @"l109", tooth110PortraitRectValue, @"p110", tooth110LandscapeRectValue, @"l110", tooth111PortraitRectValue, @"p111",tooth111LandscapeRectValue, @"l111",tooth201PortraitRectValue, @"p201", tooth201LandscapeRectValue, @"l201", tooth202PortraitRectValue, @"p202", tooth202LandscapeRectValue, @"l202", tooth203PortraitRectValue, @"p203", tooth203LandscapeRectValue, @"l203", tooth204PortraitRectValue, @"p204", tooth204LandscapeRectValue, @"l204",  tooth205PortraitRectValue, @"p205", tooth205LandscapeRectValue, @"l205", tooth206PortraitRectValue, @"p206", tooth206LandscapeRectValue, @"l206", tooth207PortraitRectValue, @"p207", tooth207LandscapeRectValue, @"l207", tooth208PortraitRectValue, @"p208", tooth208LandscapeRectValue, @"l208", tooth209PortraitRectValue, @"p209", tooth209LandscapeRectValue, @"l209", tooth210PortraitRectValue, @"p210", tooth210LandscapeRectValue, @"l210", tooth211PortraitRectValue, @"p211",tooth211LandscapeRectValue, @"l211", tooth301PortraitRectValue, @"p301", tooth301LandscapeRectValue, @"l301", tooth302PortraitRectValue, @"p302", tooth302LandscapeRectValue, @"l302", tooth303PortraitRectValue, @"p303", tooth303LandscapeRectValue, @"l303", tooth304PortraitRectValue, @"p304", tooth304LandscapeRectValue, @"l304",  tooth305PortraitRectValue, @"p305", tooth305LandscapeRectValue, @"l305", tooth306PortraitRectValue, @"p306", tooth306LandscapeRectValue, @"l306", tooth307PortraitRectValue, @"p307", tooth307LandscapeRectValue, @"l307", tooth308PortraitRectValue, @"p308", tooth308LandscapeRectValue, @"l308", tooth309PortraitRectValue, @"p309", tooth309LandscapeRectValue, @"l309", tooth310PortraitRectValue, @"p310", tooth310LandscapeRectValue, @"l310", tooth311PortraitRectValue, @"p311",tooth311LandscapeRectValue, @"l311",tooth401PortraitRectValue, @"p401", tooth401LandscapeRectValue, @"l401", tooth402PortraitRectValue, @"p402", tooth402LandscapeRectValue, @"l402", tooth403PortraitRectValue, @"p403", tooth403LandscapeRectValue, @"l403", tooth404PortraitRectValue, @"p404", tooth404LandscapeRectValue, @"l404",  tooth405PortraitRectValue, @"p405", tooth405LandscapeRectValue, @"l405", tooth406PortraitRectValue, @"p406", tooth406LandscapeRectValue, @"l406", tooth407PortraitRectValue, @"p407", tooth407LandscapeRectValue, @"l407", tooth408PortraitRectValue, @"p408", tooth408LandscapeRectValue, @"l408", tooth409PortraitRectValue, @"p409", tooth409PortraitRectValue, @"p409", tooth409LandscapeRectValue, @"l409", tooth410PortraitRectValue, @"p410", tooth410LandscapeRectValue, @"l410",tooth411PortraitRectValue, @"p411",tooth411LandscapeRectValue, @"l411", nil];
    
    return rectDictionary;
    
}

@end
