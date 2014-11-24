//
//  HomeScreenViewController.m
//  zalulu-ios
//
//  Created by Visual on 19.10.14.
//  Copyright (c) 2014 GreenLightsDev. All rights reserved.
//

#import "HomeScreenViewController.h"

#import "HomeScreenView.h"

@interface HomeScreenViewController ()
<
HomeScreenViewDelegate
>

@property (nonatomic, strong) HomeScreenView* homeScreenView;

@end

@implementation HomeScreenViewController

#pragma mark -
#pragma mark Lifecycle


- (void) loadView
{
    [super loadView];
    
    self.homeScreenView = ({
        
        HomeScreenView* view = [[HomeScreenView alloc] initWithFrame: self.view.bounds];
        
        view.delegate = self;
        
        view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        
        [self.view addSubview: view];
        view;
        
    });
}

@end
