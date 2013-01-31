//
//  AppDelegate.m
//  Table Demo
//
//  Created by Lee Calloway on 11/7/12.
//  Copyright (c) 2012 Lee Calloway. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "RouteViewController.h"
#import "NoNetworkViewController.h"

@interface AppDelegate ()

@property (nonatomic, strong) Reachability* networkReachability;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.navViewController = [[NavViewController alloc] initWithNibName:@"NavViewController" bundle:nil];
    self.window.rootViewController = self.navViewController;
    [self.window makeKeyAndVisible];
    
    ViewController *tableView = [[ViewController alloc] init];
    [self.navViewController pushViewController:tableView animated:YES];
    
    self.networkReachability = [Reachability reachabilityForInternetConnection];
    
    [self.networkReachability startNotifier];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(reachabilityChanged:) name:kReachabilityChangedNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateForReachability:) name:kNetworkDisabledNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateForReachability:) name:kNetworkEnabledNotification object:nil];
    
    // On app activiation, we can't count on the Reachability notifications having been set up fully yet,
    // so forcibly ask reachability about the network status so that we can show the no network overlay if needed.
    if (self.networkReachability.currentReachabilityStatus == NotReachable)
    {
        if (!self.navViewController.presentedViewController)
        {
            NoNetworkViewController *noNetworkViewController = [[NoNetworkViewController alloc] init];
            [self.navViewController presentViewController:noNetworkViewController animated:YES completion:NULL];
        }
    }
}
- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}
#pragma mark - Reachability handler

- (void)reachabilityChanged:(NSNotification*)notification;
{
	Reachability* currentConnection = [notification object];
	NSParameterAssert([currentConnection isKindOfClass:[Reachability class]]);
    
	switch ([currentConnection currentReachabilityStatus]) {
		case NotReachable:
			self.isNetworkReachable = NO;
			[[NSNotificationCenter defaultCenter] postNotification:[NSNotification notificationWithName:kNetworkDisabledNotification object:nil]];
			NSLog(@"REACHABILITY: Network is no longer reachable");
			break;
			
		case ReachableViaWiFi:
		case ReachableViaWWAN:
			self.isNetworkReachable = YES;
			[[NSNotificationCenter defaultCenter] postNotification:[NSNotification notificationWithName:kNetworkEnabledNotification object:nil]];
			NSLog(@"REACHABILITY: Network is now reachable");
			break;
			
		default:
			break;
	}
}

// We've instructed the notification center to call this method when a reachability notification is sent out
// Note: Alternatively, we could have specified two different methods when we subscribed to the notifications
- (void)updateForReachability:(NSNotification*)notification
{
    // Ask the name of the notification and show/hide the NoNetworkViewController
    
    if ([[notification name] isEqualToString:kNetworkDisabledNotification])
    {
        if (!self.navViewController.presentedViewController)
        {
            NoNetworkViewController *noNetworkViewController = [[NoNetworkViewController alloc] init];
            [self.navViewController presentViewController:noNetworkViewController animated:YES completion:NULL];
        }
    }
    else if ([[notification name] isEqualToString:kNetworkEnabledNotification])
    {
        if (self.navViewController.presentedViewController)
        {
            [self.navViewController dismissViewControllerAnimated:YES completion:nil];
        }
    }
}

@end