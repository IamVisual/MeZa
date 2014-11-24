//
//  SearchViewController.m
//  zalulu-ios
//
//  Created by Visual on 22.10.14.
//  Copyright (c) 2014 GreenLightsDev. All rights reserved.
//

#import "SearchViewController.h"

#import "SearchView.h"

@interface SearchViewController ()

@property (nonatomic, strong) SearchView* searchView;

@end

@implementation SearchViewController

- (void) loadView
{
    [super loadView];
    
    self.searchView = (
                        {
                            SearchView* view = [[SearchView alloc] initWithFrame: super.view.frame];
                            view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
                            [self.view addSubview: view];
                            view;
                        });
}

@end
