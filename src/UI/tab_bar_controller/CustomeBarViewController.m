//
//  CustomeBarViewController.m
//  InfoSchool
//
//  Created by Ivan on 10/21/14.
//  Copyright (c) 2014 Sokurenko. All rights reserved.
//

#import "CustomeBarViewController.h"

#import "HomeScreenViewController.h"
#import "SearchViewController.h"

@interface CustomeBarViewController ()

@end

@implementation CustomeBarViewController

- (instancetype) init
{
    self = [super init];
    
    if (self)
    {
        self.tabBar.backgroundColor = [UIColor greenColor];
        
        [self setupTabs];
    }
    
    return self;
}

- (void) loadView
{
    [super loadView];
}

- (void) viewWillAppear: (BOOL) animated
{
    [super viewWillAppear: animated];
}

- (void) viewDidDisappear: (BOOL) animated
{
    [super viewDidDisappear: animated];
}

- (void) setupTabs
{
    // Home controller
    HomeScreenViewController* zeroTabNC = [HomeScreenViewController new];
    zeroTabNC.title = NSLocalizedString(@"Home", nil);
    
    SearchViewController* firstTabNC = [SearchViewController new];
    firstTabNC.title = NSLocalizedString(@"Search", nil);
    
    self.viewControllers = [NSArray arrayWithObjects: zeroTabNC, firstTabNC, nil];
}

@end
