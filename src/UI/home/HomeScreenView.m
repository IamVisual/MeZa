//
//  HomeScreenView.m
//  zalulu-ios
//
//  Created by Visual on 19.10.14.
//  Copyright (c) 2014 GreenLightsDev. All rights reserved.
//

#import "HomeScreenView.h"

@interface HomeScreenView ()

@property (nonatomic, strong) UILabel* someLabel;

@property (nonatomic, assign) CGFloat offset;

@end

@implementation HomeScreenView

- (instancetype) initWithFrame: (CGRect) frame
{
    self = [super initWithFrame: frame];
    
    if (self)
    {
        [self setBackgroundColor: [UIColor purpleColor]];
        
        self.offset = 10.0f;
        
        self.someLabel = [[UILabel alloc] init];
        [self.someLabel setBackgroundColor: [UIColor orangeColor]];
        [self.someLabel setText: NSLocalizedString(@"Some Text In The Center", nil)];
        [self.someLabel setTextAlignment: NSTextAlignmentCenter];
        [self.someLabel setTextColor: [UIColor blackColor]];
        [self.someLabel setNumberOfLines: 0];
        [self.someLabel sizeToFit];
        [self addSubview: self.someLabel];
    }
    return self;
}

- (void) layoutSubviews
{
    [super layoutSubviews];
    
    [self.someLabel setFrame: CGRectMake(self.offset,
                                         ceilf((self.frame.size.height / 2) - (self.someLabel.frame.size.height / 2)),
                                         self.frame.size.width - (self.offset * 2),
                                         self.someLabel.frame.size.height)];
}

@end
