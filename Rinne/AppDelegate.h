//
//  AppDelegate.h
//  Rinne
//
//  Created by Juha Rinne on 7.11.2013.
//  Copyright (c) 2013 Juha Rinne. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

{
    
    UINavigationController *navController;
}


@property (strong, nonatomic) ViewController *viewController;
@property (strong, nonatomic) UIWindow *window;

@end
