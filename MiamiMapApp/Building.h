//
//  Building.h
//  Miami U Map


#import <Foundation/Foundation.h>

@interface Building : NSObject <MKAnnotation>

@property (nonatomic, assign) NSUInteger number;
@property (nonatomic, copy) NSString* name;
@property (nonatomic, assign, readonly) CLLocationCoordinate2D coordinate;

- (id)initWithNumber:(NSUInteger)number name:(NSString*)name location:(CLLocationCoordinate2D)coordinate;
- (void)setCoordinate:(CLLocationCoordinate2D)newCoordinate;
- (NSString*)title;
- (NSString*)subtitle;

@end
