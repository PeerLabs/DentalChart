//
//  DentalChartViewController.m
//  DentalChart
//
//  Created by Abrar Peer on 3/28/12.
//  Copyright (c) 2012 PeerLabs. All rights reserved.
//

#import "DentalChartViewController.h"
#import "ChartView.h"

@interface DentalChartViewController ()
@property (nonatomic, weak) IBOutlet ChartView *chartView;

@end

@implementation DentalChartViewController

@synthesize chartView = _chartView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

@end
