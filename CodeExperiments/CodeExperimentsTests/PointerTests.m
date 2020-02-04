// Copyright (C) 2020 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <XCTest/XCTest.h>

@interface PointerTests : XCTestCase
@end

@implementation PointerTests

- (void)testArrayOfChar {
    char letters[10] = { 97, 98, 99 };
    for (int i = 0; i < 10; i++) {
        printf("address: %p, int value: %d, char value: %c\n", &letters[i], letters[i], letters[i]);
    }
    
    printf("%s\n", letters);
    
    char letters2[10] = { 'a', 'b', 'c', '\0' };
    printf("%s\n", letters2);
    
    char letters3[] = "abc";
    printf("%s\n", letters3);
    
    char letters4[] = "abc";
    
    char *p1 = "abc";
    char *p2 = "abc";
    printf("%s\n", p1);
    
    letters3[0] = 'A';
    printf("%s\n", letters3);
    printf("%s\n", letters4);
    
    p2 = letters3;
    p2[0] = 'Z';
    printf("%s\n", p2);
    
    // Illegal!
    p1[0] = 'Z';
    printf("%s\n", p1);
}


- (void)testPointerToInt {
//    int y = 42;
    int x = 3;
    int *myPointer;
    
    myPointer = &x;
    NSLog(@"address is %p, value is %d", myPointer, *myPointer);
    
    *myPointer += 1;
    myPointer += 1;
    NSLog(@"address is %p, value is %d", myPointer, *myPointer);
}

- (void)testPointerToArrayOfInt {
    int numbers[] = { 1, 2, 3, -1 };
    
    // No can do! An array is not a variable, it's a symbol for the address of the allocated memory.
    //    int numbers2[3] = numbers;
    
    NSLog(@"address is %p, value is %d", numbers, numbers[0]);
    
    for (int i = 0; i < 5; i++) {
        printf("%d\n", numbers[i]);
    }
    
    int *numberRef = numbers;
    printf("numberRef is %p, value is %d\n", numberRef, *numberRef);
    printf("numberRef is %p, value is %d\n", numbers, numbers[0]);
    
    printf("numberRef is %p, value is %d\n", numberRef + 1, *(numberRef + 1));
    printf("numberRef is %p, value is %d\n", numberRef + 1, numberRef[1]);
    
    printf("numberRef is %p, value is %d\n", numbers + 1, *(numbers + 1));
    
    for (int *p = numberRef; *p != -1 ; p++) {
        printf("p is %p, value is %d\n", p, *p);
    }
}

@end
