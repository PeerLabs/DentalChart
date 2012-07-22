//
//  DentalChartViewController.m
//  DentalChart
//
//  Created by Abrar Peer on 3/07/12.
//  Copyright (c) 2012 PeerLabs. All rights reserved.
//

#import "DentalChartViewController.h"
#import "../Model/ToothDataDictionary.h"
#import "../Views/ChartView.h"
#import "../Views/ToothControl.h"

@interface DentalChartViewController ()

//model
@property (nonatomic, strong) ToothDataDictionary *sharedToothDataDictionary;
@property (nonatomic) BOOL isCurrentUpperJaw;
@property (nonatomic) BOOL isPortrait; 

@end

@implementation DentalChartViewController

@synthesize chartView = _chartView;
@synthesize sharedToothDataDictionary = _sharedToothDataDictionary;
@synthesize isCurrentUpperJaw = _isCurrentUpperJaw;
@synthesize isPortrait = _isPortrait;

- (ToothDataDictionary *) sharedToothDataDictionary {
    
    if (! _sharedToothDataDictionary) {
        
        _sharedToothDataDictionary = [ToothDataDictionary sharedToothDataDictionary];
        
    }
    
    return _sharedToothDataDictionary;
    
}


- (BOOL) isCurrentUpperJaw {
    
    if (! _isCurrentUpperJaw) {
        
        _isCurrentUpperJaw = YES;
    }
    
    return _isCurrentUpperJaw;
}

- (BOOL) isPortrait {
    
    if (! _isPortrait) {
        
        _isPortrait = YES;
    }
    
    return _isPortrait;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    if (self.chartView) {
        
        NSLog(@"DEBUG: SuperView Loaded!\n");
        NSLog(@"DEBUG: ChartView: (%f, %f)\n", self.chartView.frame.size.width, self.chartView.frame.size.height);
        
        [self.chartView addToothControls];
        

        
        
        
        
    }
    
}

- (void)viewDidUnload
{
    [self setChartView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

@end
