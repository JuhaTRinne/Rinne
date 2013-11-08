//
//  ViewController.m
//  Rinne
//
//  Created by Juha Rinne on 7.11.2013.
//  Copyright (c) 2013 Juha Rinne. All rights reserved.
//

#import "ViewController.h"
#import "ChannelListCell.h"
#import "ProgramViewViewController.h"
#import <Foundation/Foundation.h>

@interface ViewController ()

@end

@implementation ViewController

{
    NSArray *tableData;
}

@synthesize receivedData;

- (void)viewDidLoad
{
    //Get ready to present the view
    [super viewDidLoad];
	
    //Dummy data for testing
    tableData = [NSArray arrayWithObjects:@"Uutiset", @"Uutiset", @"Uutiset", @"Uutiset", @"Uutiset", @"Uutiset", @"Uutiset", @"Uutiset", @"Uutiset", @"Uutiset", @"Uutiset", @"Uutiset", @"Uutiset", @"Uutiset", @"Uutiset", @"Uutiset", nil];
    
    //Read data from api.telkku.com
    [self getJSON];    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushViewController:(id)sender
{
    //Test method for navigation
    ProgramViewViewController *newViewController = [[ProgramViewViewController alloc] init];
    [self.navigationController pushViewController:newViewController animated:YES];
}

#pragma mark - UITableView protocol methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    static NSString *staticTimeTable = @"13.00";
    
    ChannelListCell *cell = (ChannelListCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
    
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"ChannelListCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.programLabel.text = [tableData objectAtIndex:indexPath.row];
    cell.timeLabel.text = staticTimeTable;
    return cell;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    //[super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
    
}

#pragma mark - TELKKU data

- (void)getJSON

{
    //Method for reading channel data
    
	NSURL *url = [NSURL URLWithString:@"http://api.telkku.com/v1/channels"];
    //String format problem
//    NSURL *url = [NSURL URLWithString:@"http://api.telkku.com/v1/channels/1/programs?queryRangeStart=2013-11-08T00:00:00.000Z&queryRangeEnd=2013-11-08T23:59:00.000Z"];
   

    //Set Tellku authentication
    NSMutableURLRequest* request = [[NSMutableURLRequest alloc] initWithURL:url];
    [request setValue:@"3e6e6758ff3b6823b0134604a8b0acc3d022af3a26b53188e1dbe29fc84a1569" forHTTPHeaderField:@"X-telkku-app-key"];
    
	NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    
	if (connection)
        
	{
		self.receivedData = [NSMutableData data];
	}
    
	else
        
	{
		// Inform the user that the connection failed.
        NSLog(@"Inform the user that the connection failed.");
	}
    //Get telkku data
    [NSURLConnection sendAsynchronousRequest:request queue:[[NSOperationQueue alloc] init]
        completionHandler:^(NSURLResponse *response, NSData *data, NSError *error){
        if (data){            
            //parse out the json data
            NSError* error;
            NSDictionary* json = [NSJSONSerialization
                                  	JSONObjectWithData:data
                                    options:kNilOptions
                                  error:&error];
            
            NSDictionary* datas = [json objectForKey:@"data"];
                        
            NSLog(@"datas: %@", datas);
        }
        else if (error)
            NSLog(@"%@",error);
    }];
    
}

@end
