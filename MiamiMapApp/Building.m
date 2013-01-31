//
//  Building.m
//  Miami U Map


#import "Building.h"


@interface Building ()

@property (nonatomic, assign, readwrite) CLLocationCoordinate2D coordinate;

@end


@implementation Building

- (id)initWithNumber:(NSUInteger)number name:(NSString*)name location:(CLLocationCoordinate2D)coordinate;
{
    self = [super init];
    
    if (self)
    {
        _number = number;
        _name = name;
        _coordinate = coordinate;
    }
    
    return self;
}

- (void)setCoordinate:(CLLocationCoordinate2D)newCoordinate;
{
    _coordinate = newCoordinate;
}

- (NSString*)title;
{
    return self.name;
}

- (NSString*)subtitle;
{
    return nil;
}

@end
