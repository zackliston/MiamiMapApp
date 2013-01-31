//
//  FStackableViewController.h
//  NavController Demo
//
//  Created by Lee Calloway on 10/30/12.
//  Copyright (c) 2012 Lee Calloway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Building.h"

@interface MapViewController : UIViewController

// To reference UI elements that have been laid out in the XIB file that goes with this view controller,
// create properties of the correct UI types (UIButton, UILabel) and use "IBOutlet" to let Xcode know
// that you will connect these properties to UI elements in the XIB file.
@property (nonatomic, weak) IBOutlet UILabel* descriptionLabel;

@property (nonatomic, weak) IBOutlet UILabel* statusLabel;

@property (nonatomic, strong) IBOutlet MKMapView* mapView;

@property (nonatomic, weak) Building* curBuild;

- (void)showBuilding:(Building *) currentBuilding;

@end
