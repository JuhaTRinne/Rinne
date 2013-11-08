//
//  ProgramViewViewController.h
//  Rinne
//
//  Created by Juha Rinne on 7.11.2013.
//  Copyright (c) 2013 Juha Rinne. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProgramViewViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *timeLabel;
@property (nonatomic, weak) IBOutlet UILabel *headingLabel;
@property (nonatomic, weak) IBOutlet UILabel *descriptionLabel;
@property (nonatomic, weak) IBOutlet UIScrollView *programDescription;
@property (nonatomic, weak) IBOutlet UIImageView *programImage;

- (IBAction)popViewController:(id)sender;

@end
