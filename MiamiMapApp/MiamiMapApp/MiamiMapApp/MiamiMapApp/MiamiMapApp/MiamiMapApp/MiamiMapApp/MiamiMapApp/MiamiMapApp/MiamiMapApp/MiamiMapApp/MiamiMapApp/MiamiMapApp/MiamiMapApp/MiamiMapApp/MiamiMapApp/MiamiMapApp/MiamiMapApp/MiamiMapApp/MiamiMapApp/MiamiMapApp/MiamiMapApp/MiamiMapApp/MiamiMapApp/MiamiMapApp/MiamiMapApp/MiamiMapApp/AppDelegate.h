//
//  AppDelegate.h
//  MiamiMapApp
//
//  Created by Eliot Fowler on 11/7/12.
//  Copyright (c) 2012 eliotfowler. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NavViewController.h"
#import "Reachability.h"

static NSString* const kNetworkDisabledNotification = @"NetworkDisabledNotification";
static NSString* const kNetworkEnabledNotification = @"NetworkEnabledNotification";

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) NavViewController *navViewController;

@property (nonatomic, assign) BOOL isNetworkReachable;

@end
