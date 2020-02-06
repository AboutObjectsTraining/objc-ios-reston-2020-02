#import <Foundation/Foundation.h>
@class Dog;

struct Keys {
    NSString __unsafe_unretained * const firstName;
};

@interface Person : NSObject <NSCopying>

@property (class, nonatomic) NSString *defaultName;

@property (getter=isHipster, nonatomic) BOOL hipster;
@property (strong, nonatomic) Dog *dog;
@property (copy, nonatomic) NSString *firstName;
@property (copy, nonatomic) NSString *lastName;
@property (readonly, nonatomic) NSString *fullName;
@property (assign, nonatomic) NSInteger age;

//// Part 2
- (id)initWithFirstName:(NSString *)firstName
               lastName:(NSString *)lastName
                    age:(int)age;


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
@property (assign, nonatomic) NSUInteger rating;
//{
//    NSUInteger _rating;
//}
//
//- (NSUInteger)rating;
//- (void)setRating:(NSUInteger)newValue;

- (NSString *)ratingStars;

@end
////

