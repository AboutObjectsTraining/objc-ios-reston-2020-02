#import <Foundation/Foundation.h>
@class Dog;

@interface Person : NSObject
{
    NSString *_firstName;
    NSString *_lastName;
    int _age;
}

@property (strong, nonatomic) Dog *dog;

- (NSString *)firstName;
- (void)setFirstName:(NSString *)newValue;

- (NSString *)lastName;
- (void)setLastName:(NSString *)newValue;

- (int)age;
- (void)setAge:(int)newValue;

//// Part 2
- (id)initWithFirstName:(NSString *)firstName
               lastName:(NSString *)lastName
                    age:(int)age;

- (NSString *)fullName;

////

//// Part 3
+ (instancetype)personWithFirstName:(NSString *)firstName
                           lastName:(NSString *)lastName
                                age:(int)age;
- (void)display;
////

@end


//// Part 4
@interface Person ()
{
    NSUInteger _rating;
}

- (NSUInteger)rating;
- (void)setRating:(NSUInteger)newValue;

- (NSString *)ratingStars;

@end
////

