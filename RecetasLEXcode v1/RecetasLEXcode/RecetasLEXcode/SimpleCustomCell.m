//
//  SimpleCustomCell.m
//  RecetasLEXcode
//
//  Created by David de la Puente on 10/11/13.
//  Copyright (c) 2013 David de la Puente. All rights reserved.
//

#import "SimpleCustomCell.h"

@implementation SimpleCustomCell

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

@end
