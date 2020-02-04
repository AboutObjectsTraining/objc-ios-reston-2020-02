// Copyright (C) 2020 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

struct CDXSize {
    double width;
    double height;
};

typedef struct CDXSize CDXSize;

CDXSize newSize(double width, double height);
CDXSize offset(CDXSize existingSize, double dx, double dy);

void show(CDXSize size);
