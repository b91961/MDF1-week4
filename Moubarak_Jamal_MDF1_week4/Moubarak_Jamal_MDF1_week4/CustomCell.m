//
//  CustomCell.m
//  Moubarak_Jamal_MDF1_week4
//
//  Created by Jamal Moubarak on 1/24/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//  MDF1 project 4

#import "CustomCell.h"

@implementation CustomCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

-(void)refreshCellWithInfo:(NSString*)firstString
{
    firstLabel.text = firstString;
}

@end