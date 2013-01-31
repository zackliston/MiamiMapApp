//
//  RouteViewController.h
//  MiamiMapApp

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface RouteViewController : UIViewController

@property (nonatomic, weak) IBOutlet UIWebView *webView;

- (void) routeWithEndLocation:(CLLocationCoordinate2D)endLocation withStartLocation:(CLLocationCoordinate2D)userLoc;

@end
