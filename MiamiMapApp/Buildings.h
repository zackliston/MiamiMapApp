//
//  Buildings.h
//  Miami U Map


#import <Foundation/Foundation.h>

@class Building;

@interface Buildings : NSObject <MKAnnotation>

- (Building*)buildingForName:(NSString*)buildingName;
- (CLLocationCoordinate2D)locationForBuilding:(NSString*)buildingName;
- (NSUInteger)count;
- (NSArray*)orderedNames;

@end
