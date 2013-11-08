//
//  ChannelListCell.h
//  Rinne
//
//  Created by Juha Rinne on 7.11.2013.
//  Copyright (c) 2013 Juha Rinne. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChannelListCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *timeLabel;
@property (nonatomic, weak) IBOutlet UILabel *programLabel;

@end
