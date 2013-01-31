//
//  FirstViewController.m
//  NavController Demo
//
//  Created by Lee Calloway on 10/30/12.
//  Copyright (c) 2012 Lee Calloway. All rights reserved.
//

#import "MapViewController.h"
#import "AppDelegate.h"

@interface MapViewController ()

@end

@implementation MapViewController



// Boiler plate code provided by the project template
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

    }
    return self;
}

// viewDidLoad is called when the XIB file describing this controller's view has finished loading.
// So when this is called, the views are set up and can be changed, added to, etc.
// Note, at this point, the view is not visible on screen yet.
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // For some things, when the navigation controller shows the view of this controller,
    // it will ask this controller for some values...
    // - The navigation controller will ask this controller what the title should be on the navigation bar (self.title below)
    // - The navigation controller will show a button on the right of the navigation bar if one is set (as is done here)
    
    // Adding the button that appears in the upper right of the navigation bar
    // Creating a title for the button first
    NSString* actionButtonTitle = [NSString stringWithFormat:@"Route"];
    
    // Special kind of button for navigation bars, so this uses a UIBarButtonItem instead of just a plain UIButton
    // When creating the button, we also specify the target/action for the button...
    // target = what object should be sent the action, action = a selector that identifies the method to be called on the target
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:actionButtonTitle style:UIBarButtonItemStyleDone target:self action:@selector(takeAction:)];
    
    // Just for demo, creating a single building
    //self.testBuilding = [[Building alloc] initWithNumber:
    
    // This will only work on an actual device. The simulator cannot show the user's actual location.
    self.mapView.showsUserLocation = YES;
   
    
    // Tell the map view what area it should show... an MKCoordinateRegion describes a rectangle centered on a location
    // The map view will try to show the rectangle specified in the MKCoordinateRegion without distorting the map
    // The MKCoordinateSpan is a number of degrees along latitude and longitude...
    // Note, latitude specifies a distance along north-south and is the same distance regardless of the center point's latitude,
    // however, longitude specifies a distance along east-west and the distance varies according to the center point's latitude    
    
    // Since a building adheres to the MKAnnotation protocol, it can be added to a map view as an annotation
    // Adding it here will make it show on the map view
    //[self.mapView addAnnotation:self.testBuilding];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) showBuilding: (Building*) currentBuilding
{
    MKCoordinateRegion coordinateRegion = MKCoordinateRegionMake(currentBuilding.coordinate, MKCoordinateSpanMake(0.5/69.0, 0.5/69.0));
    [self.mapView setRegion:coordinateRegion animated:YES];
    
    [self.mapView addAnnotation:currentBuilding];
    NSLog(@"Added Annotation");
}

- (IBAction)takeAction:(id)sender;
{
    // Just to show that the button added to the upper right of the navigation bar can be made to cause other code to be called...
    // This method was set as the action to take when the button is touched.
    
    // NSLog just sends a string to the debug console in Xcode.
    NSLog(@"Coming Soon!");
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    // Subscribe as an observer of the reachability notifications
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateForReachability:) name:kNetworkDisabledNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateForReachability:) name:kNetworkEnabledNotification object:nil];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    
    // Unsubscribe as an observer of all notifications
    // If this is not done, the notification center may try to send a message to this view controller even after the controller is destroyed... CRASH
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

// We've instructed the notification center to call this method when a reachability notification is sent out
// Note: Alternatively, we could have specified two different methods when we subscribed to the notifications
- (void)updateForReachability:(NSNotification*)notification
{
    // Ask the name of the notification and change the label in our view to show the network state
    
    if ([[notification name] isEqualToString:kNetworkDisabledNotification])
    {
        self.statusLabel.hidden = NO;
    }
    else if ([[notification name] isEqualToString:kNetworkEnabledNotification])
    {
        self.statusLabel.hidden = YES;
    }
}

@end
