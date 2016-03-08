//
//  UIView+Shadow.m
//  ADTransitionController
//
//  Created by Adil Malik on 08/03/2016.
//  Copyright © 2016 Punch. All rights reserved.
//

#import "UIView+Shadow.h"

@implementation UIView (Shadow)

- (void)showShadow:(BOOL)showShadow
{
    UIBezierPath *shadowPath = [UIBezierPath bezierPathWithRect:self.bounds];
    self.layer.masksToBounds = NO;
    self.layer.shadowColor = [UIColor blackColor].CGColor;
    self.layer.shadowOffset = CGSizeMake(0.0f, 0.0f);  /*Change value of X n Y as per your need of shadow to appear to like right bottom or left bottom or so on*/
    self.layer.shadowOpacity = showShadow ? 0.8f : 0;
    self.layer.shadowRadius = 5.0f;
    self.layer.shadowPath = shadowPath.CGPath;
}

@end