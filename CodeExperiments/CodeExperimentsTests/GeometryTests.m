// Copyright (C) 2020 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <XCTest/XCTest.h>
#import <CodeExperiments/CodeExperiments.h>

@interface GeometryTests : XCTestCase
@end

@implementation GeometryTests

- (void)testSizeStruct {
    CDXSize mySize = newSize(12, 24);
    show(mySize);
    
    CDXSize offsetSize = offset(mySize, 6, 12);
    show(offsetSize);
}

- (void)testArrayOfSizes {
    CDXSize sizes[3] = { newSize(3, 4), newSize(12, 18), newSize(100, 200) };
    
    for (int i = 0; i < 3; i++) {
        show(sizes[i]);
    }
}

@end
