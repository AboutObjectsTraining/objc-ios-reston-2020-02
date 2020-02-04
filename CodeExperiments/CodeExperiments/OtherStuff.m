// Copyright (C) 2020 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <Foundation/Foundation.h>
#import "Stuff.h"

void _myPrivateFunction(void);

void callPrivateFunction(void) {
    _myPrivateFunction();
}
