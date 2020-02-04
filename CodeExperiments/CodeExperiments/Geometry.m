// Copyright (C) 2020 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <Foundation/Foundation.h>
#import "Geometry.h"

CDXSize newSize(double width, double height) {
    CDXSize size = { width, height };
    return size;
}

CDXSize offset(CDXSize size, double dx, double dy) {
    size.width += dx;
    size.height += dy;
    return size;
}

void show(CDXSize size) {
    NSLog(@"width: %.2f, height: %.2f", size.width, size.height);
}
