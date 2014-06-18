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
    
    CGRect bounds = [self.layer bounds];
    CGFloat lineWidth = self.lineWidth;
    CAShapeLayer *circleLayer = [CAShapeLayer layer];
    [circleLayer setBounds:bounds];
    [self.layer addSublayer:circleLayer];
   
    CGRect ovalRect = CGRectOffset(bounds, bounds.size.width / 2, bounds.size.height / 2);
    ovalRect = CGRectInset(ovalRect, lineWidth / 2, lineWidth / 2);
    UIBezierPath *circle = [UIBezierPath bezierPathWithOvalInRect:ovalRect];
   
    [circleLayer setPath:circle.CGPath];
    [circleLayer setFillColor:[self.fillColor CGColor]];
    [circleLayer setStrokeColor:[self.strokeColor CGColor]];
    [circleLayer setLineWidth:lineWidth];
}

- (CGSize)intrinsicContentSize
{
    return self.size;
}

@end
