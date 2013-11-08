//
//  ProgramViewViewController.m
//  Rinne
//
//  Created by Juha Rinne on 7.11.2013.
//  Copyright (c) 2013 Juha Rinne. All rights reserved.
//

#import "ProgramViewViewController.h"

@interface ProgramViewViewController ()

@end

@implementation ProgramViewViewController

@synthesize timeLabel = _timeLabel;
@synthesize headingLabel = _headingLabel;
@synthesize descriptionLabel =_descriptionLabel;
@synthesize programDescription = _programDescription;
@synthesize programImage = _programImage;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:@"ProgramView" bundle:nil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    //Dummy data for testing
    self.timeLabel.text = @"13.00";
    self.headingLabel.text = @"LiipaLaapa paljon tietoa tyhjästä kuin nyhjästä";
    self.programImage.image = [UIImage imageNamed:@"Default.png"];
    self.descriptionLabel.text = @"LiipaLaapa paljon tietoa tyhjästä kuin nyhjästä LiipaLaapa paljon tietoa tyhjästä kuin nyhjästä LiipaLaapa paljon tietoa tyhjästä kuin nyhjästä LiipaLaapa paljon tietoa tyhjästä kuin nyhjästä LiipaLaapa paljon tietoa tyhjästä kuin nyhjästä LiipaLaapa paljon tietoa tyhjästä kuin nyhjästä";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)popViewController:(id)sender
{
    [self.navigationController popViewControllerAnimated:TRUE];
}

@end
