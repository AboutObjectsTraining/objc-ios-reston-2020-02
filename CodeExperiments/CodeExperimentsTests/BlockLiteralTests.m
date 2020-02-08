// Copyright (C) 2020 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <XCTest/XCTest.h>

@interface BlockLiteralTests : XCTestCase
@property (copy, nonatomic) NSString *weather;
@end

void sayHello(void) {
    printf("Hello!\n");
}

void sayGoodbye() {
    printf("Bye!\n");
}

void saySomethingForMe(void (*someFunctionPointer)(void)) {
    printf("I'm saying something for you!\n");
    someFunctionPointer();
}

void runMyBlock(void (^block)(void)) {
    NSLog(@"Running your block!");
    block();
}

@implementation BlockLiteralTests

- (void)testPassingABlockLiteral {
    self.weather = @"Sunny";
    double temperature = 72.5;
    
    void (^myBlock)(void) = ^{
        NSLog(@"The weather is %@; the temperature is %.1f", self.weather, temperature);
    };
    
    runMyBlock(myBlock);
    
    void (^copiedBlock)(void) = [myBlock copy];
    copiedBlock();
}

- (void)testBlockLiterals {
    void (^myBlockPointer)(void);
    
    myBlockPointer = ^{
        NSLog(@"Hello!");
    };
    
    myBlockPointer();
}

- (void)testFunctionPointer {
    sayHello();
    
//    int a[] = { 1, 2, 3};
//    int *p = a;
//
//    int *(*foo)[10];
    
    void (*myPointer)(void);
    myPointer = sayHello;
    myPointer();
    
    saySomethingForMe(sayHello);
    saySomethingForMe(myPointer);
    myPointer = sayGoodbye;
    saySomethingForMe(myPointer);
}


@end
