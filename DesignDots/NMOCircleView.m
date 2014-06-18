//
//  Copyright (c) 2014 Nat Osten. All rights reserved.
//

#import "NMOCircleView.h"

@implementation NMOCircleView

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setTranslatesAutoresizingMaskIntoConstraints:NO];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CAShapeLayer *circleLayer = [CAShapeLayer layer];
    [circleLayer setBounds:[self.layer bounds]];
    [self.layer addSublayer:circleLayer];
   
    CGRect bounds = [self.layer bounds];
    CGRect ovalRect = CGRectOffset(bounds, bounds.size.width / 2, bounds.size.height / 2);
    ovalRect = CGRectInset(ovalRect, self.lineWidth / 2, self.lineWidth / 2);
    UIBezierPath *circle = [UIBezierPath bezierPathWithOvalInRect:ovalRect];
   
    [circleLayer setPath:circle.CGPath];
    [circleLayer setFillColor:[self.fillColor CGColor]];
    [circleLayer setStrokeColor:[self.strokeColor CGColor]];
    [circleLayer setLineWidth:self.lineWidth];
}

- (CGSize)intrinsicContentSize
{
    return self.size;
}

//- (UIEdgeInsets)alignmentRectInsets
//{
//    CGFloat lineWidth = -self.lineWidth;
//    return UIEdgeInsetsMake(lineWidth, lineWidth, lineWidth, lineWidth);
//}

@end
