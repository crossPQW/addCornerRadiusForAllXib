//
//  UIView+CornerRadius.m
//  addCornerRadiusForAllXib
//
//  Created by 黄少华 on 15/12/28.
//  Copyright © 2015年 黄少华. All rights reserved.
//

#import "UIView+CornerRadius.h"

@implementation UIView (CornerRadius)

- (CGFloat)cornerRadius
{
    return self.cornerRadius;
}
- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = YES;
}

- (CGFloat)borderWidth
{
    return self.borderWidth;
}
- (void)setBorderWidth:(CGFloat)borderWidth
{
    self.layer.borderWidth = borderWidth;
    self.layer.masksToBounds = YES;
}

- (UIColor *)borderColor
{
    return self.borderColor;
}
- (void)setBorderColor:(UIColor *)borderColor
{
    self.layer.borderColor = borderColor.CGColor;
}
@end
