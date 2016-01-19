//
//  UIView+CornerRadius.m
//  addCornerRadiusForAllXib
//
//  Created by 黄少华 on 15/12/28.
//  Copyright © 2015年 黄少华. All rights reserved.
//

#import "UIView+CornerRadius.h"
#import <objc/runtime.h>

static const void *cornerRadiusKey = &cornerRadiusKey;
static const void *borderWidthKey  = &borderWidthKey;
static const void *borderColorKey  = &borderColorKey;

@implementation UIView (CornerRadius)

@dynamic cornerRadius;
@dynamic borderColor;

- (CGFloat)cornerRadius
{
    return [objc_getAssociatedObject(self, cornerRadiusKey) floatValue];
}
- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = YES;
}


- (CGFloat)borderWidth
{
    return [objc_getAssociatedObject(self, borderWidthKey) floatValue];
}
- (void)setBorderWidth:(CGFloat)borderWidth
{
    self.layer.borderWidth = borderWidth;
    self.layer.masksToBounds = YES;
}


- (UIColor *)borderColor
{
    return objc_getAssociatedObject(self, borderColorKey);
}
- (void)setBorderColor:(UIColor *)borderColor
{
    self.layer.borderColor = borderColor.CGColor;
}
@end
