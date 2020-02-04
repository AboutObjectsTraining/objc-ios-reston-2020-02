// Copyright (C) 2020 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#define FOO_BAR "Hello", "World!"

#ifdef __LP64__
typedef double Percentage;
#else
typedef float Percentage;
#endif

Percentage calculateDiscount(float price, float discountAmount);
