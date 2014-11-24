//
//  HomeScreenView.h
//  zalulu-ios
//
//  Created by Visual on 19.10.14.
//  Copyright (c) 2014 GreenLightsDev. All rights reserved.
//

#import "BaseView.h"

@protocol HomeScreenViewDelegate;

@interface HomeScreenView : BaseView

@property (nonatomic, weak) id <HomeScreenViewDelegate> delegate;

@end

@protocol HomeScreenViewDelegate <NSObject>

- (void) showStationListDelegate;

@end
