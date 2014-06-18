//
//  Copyright (c) 2014 Nat Osten. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE

@interface NMOCircleView : UIView

@property (assign, nonatomic)IBInspectable CGSize size;
@property (strong, nonatomic)IBInspectable UIColor *fillColor;
@property (strong, nonatomic)IBInspectable UIColor *strokeColor;
@property (assign, nonatomic)IBInspectable CGFloat lineWidth;

@end
