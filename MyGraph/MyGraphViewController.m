//
//  MyGraphViewController.m
//  MyGraph
//
//  Created by Alexander Kolesnikov on 09/09/2011.
//  Copyright 2011 Sirius Lab Ltd. All rights reserved.
//

#import "MyGraphViewController.h"
#import "GraphView.h"

@implementation MyGraphViewController
@synthesize scroller;

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    scroller.contentSize = CGSizeMake(kDefaultGraphWidth, kGraphHeight);
}

- (void)viewDidUnload
{
    [self setScroller:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

- (void)dealloc {
    [scroller release];
    [super dealloc];
}
@end
