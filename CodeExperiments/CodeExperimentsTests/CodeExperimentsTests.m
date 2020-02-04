// Copyright (C) 2020 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <XCTest/XCTest.h>
#import <CodeExperiments/CodeExperiments.h>

@interface CodeExperimentsTests : XCTestCase
@end

@implementation CodeExperimentsTests

- (void)testFooBar {
    NSLog(@"%s %s", FOO_BAR);
//    XCTAssert(1 == 2);
}

- (void)testDiscount {
    Percentage p = calculateDiscount(120, 30);
    NSLog(@"%.2f", p);
}

- (void)testCallingPrivateFunction {
    callPrivateFunction();
}

@end
