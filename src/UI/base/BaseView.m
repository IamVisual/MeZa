//
//  BaseView.m
//  zalulu-ios
//
//  Created by Ivan on 8/21/14.
//  Copyright (c) 2014 Sokurenko. All rights reserved.
//

#import "BaseView.h"

@interface BaseView ()

@end

@implementation BaseView


#pragma mark -
#pragma mark - General

- (instancetype) initWithFrame: (CGRect) frame
{
    self = [super initWithFrame: frame];
    
    if (self)
    {
        [self setClipsToBounds: YES];
    }
    
    return self;
}

@end
