//
//  MyGraphAppDelegate.h
//  MyGraph
//
//  Created by Alexander Kolesnikov on 09/09/2011.
//  Copyright 2011 Sirius Lab Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MyGraphViewController;

@interface MyGraphAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet MyGraphViewController *viewController;

@end
