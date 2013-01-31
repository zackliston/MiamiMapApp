//
//  RouteViewController.h
//  MiamiMapApp
//
//  Created by Eliot Fowler on 11/28/12.
//  Copyright (c) 2012 eliotfowler. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface RouteViewController : UIViewController

@property (nonatomic, weak) IBOutlet UIWebView *webView;

- (void) routeWithEndLocation:(CLLocationCoordinate2D)endLocation withStartLocation:(CLLocationCoordinate2D)userLoc;

@end
