//
//  MyGraphViewController.h
//  MyGraph
//
//  Created by Alexander Kolesnikov on 09/09/2011.
//  Copyright 2011 Sirius Lab Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyGraphViewController : UIViewController {
    UIScrollView *scroller;
}

@property (nonatomic, retain) IBOutlet UIScrollView *scroller;

@end
