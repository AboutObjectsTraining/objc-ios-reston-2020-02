// Copyright (C) 2020 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <XCTest/XCTest.h>

@interface ClassClusterTests : XCTestCase
@end

@implementation ClassClusterTests

- (void)testNSStringClassCluster {
    NSString *s1 = [NSString alloc];
//    NSString *s2 = [NSString alloc];
    s1 = [s1 initWithFormat:@"%@ %@", @"Hello", @"World!"];
    NSLog(@"%@", s1);
//    NSLog(@"%@", s2);
    
    NSMutableString *s3 = [NSMutableString alloc];
    s3 = [s3 initWithString:s1];
    NSLog(@"%@", s3);
}

@end
