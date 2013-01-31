//
//  Buildings.h
//  Miami U Map
//
//  Created by Lee Calloway on 11/4/12.
//  Copyright (c) 2012 Lee Calloway. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Building;

@interface Buildings : NSObject <MKAnnotation>

- (Building*)buildingForName:(NSString*)buildingName;
- (CLLocationCoordinate2D)locationForBuilding:(NSString*)buildingName;
- (NSUInteger)count;
- (NSArray*)orderedNames;

@end
