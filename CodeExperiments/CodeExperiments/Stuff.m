// Copyright (C) 2020 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <Foundation/Foundation.h>
#import "Stuff.h"

Percentage calculateDiscount(float price, float discountAmount) {
    return (discountAmount / price) * 100;
}

void _myPrivateFunction() {
    NSLog(@"In %s", __func__);
}

