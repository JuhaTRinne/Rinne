//
//  ViewController.h
//  Rinne
//
//  Created by Juha Rinne on 7.11.2013.
//  Copyright (c) 2013 Juha Rinne. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) ViewController *programViewController;
@property (nonatomic, retain) NSMutableData *receivedData;

- (IBAction)pushViewController:(id)sender;

@end
