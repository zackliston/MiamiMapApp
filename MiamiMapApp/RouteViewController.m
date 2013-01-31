//
//  RouteViewController.m
//  MiamiMapApp
//
//  Created by Eliot Fowler on 11/28/12.
//  Copyright (c) 2012 eliotfowler. All rights reserved.
//

#import "RouteViewController.h"
#import "AppDelegate.h"

#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@implementation RouteViewController

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(route) name:kNetworkEnabledNotification object:nil];
}

- (void)routeWithEndLocation:(CLLocationCoordinate2D)endLocation withStartLocation:(CLLocationCoordinate2D)userLoc
{
    CLLocationCoordinate2D endCoordinate = userLoc;
    CLLocationCoordinate2D startCoordinate = endLocation;
    
    NSString* urlString = [NSString stringWithFormat:@"http://maps.google.com/maps?daddr=%f,%f&saddr=%f,%f&dirflg=w", startCoordinate.latitude, startCoordinate.longitude, endCoordinate.latitude, endCoordinate.longitude];
    
    NSURL* url = [NSURL URLWithString:urlString];
    NSURLRequest* urlRequest = [NSURLRequest requestWithURL:url];
    
    [self.webView loadRequest:urlRequest];
}

@end