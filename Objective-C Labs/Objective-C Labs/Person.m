#import "Person.h"
#import "Dog.h"

@implementation Person

- (instancetype)copyWithZone:(NSZone *)zone {
    Person *newPerson = [[self.class allocWithZone:zone] init];
    newPerson->_firstName = [self.firstName copy];
    newPerson->_lastName = [self.lastName copy];
    newPerson->_age = self.age;
    
    return newPerson;
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    return self.dog;
}

+ (NSString *)defaultName {
    return @"Unknown";
}

//
//- (NSString *)lastName {
//    return _lastName;
//}
//- (void)setLastName:(NSString *)newValue {
//    _lastName = [newValue copy];
//}
//
//- (int)age {
//    return _age;
//}
//- (void)setAge:(int)newValue {
//    _age = newValue;
//}

//- (instancetype)initWithDog:(Dog *)dog {
//    if (!(self = [super init])) return nil;
//
//    _dog = dog;
//
//    return self;
//}

//// Part 2
- (id)initWithFirstName:(NSString *)firstName
               lastName:(NSString *)lastName
                    age:(int)age
{
//    NSLog(@"%@", NSStringFromSelector(_cmd));
    if (!(self = [super init])) return nil;
    
    _firstName = [firstName copy];
    _lastName = [lastName copy];
    _age = age;
    
    return self;
}

//@synthesize fullName = _fullName;

- (NSString *)fullName {
    return [NSString stringWithFormat:@"%@ %@", [self firstName], [self lastName]];
}
////


//// Part 3
+ (instancetype)personWithFirstName:(NSString *)firstName
                           lastName:(NSString *)lastName
                                age:(int)age
{
    return [[self alloc] initWithFirstName:firstName
                                  lastName:lastName
                                       age:age];
}

- (void)display
{
    printf("%s\n", [[self description] UTF8String]);
}
////

//// Part 4

const NSUInteger MaxRating = 5;

//- (NSUInteger)rating {
//    return _rating;
//}
- (void)setRating:(NSUInteger)newValue {
    _rating = newValue > MaxRating ? MaxRating : newValue;
}

- (NSString *)ratingStars
{
    if ([self rating] == 0)  return @"-";

    return [@"*****" substringToIndex:[self rating]];
}

- (NSString *)description
{
    NSString *stars = [self ratingStars];
    stars = [stars stringByPaddingToLength:MaxRating
                                withString:@" "
                           startingAtIndex:0];
    
    return [NSString stringWithFormat:@"%@  %@", stars, [self fullName]];
}

////


@end
