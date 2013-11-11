//
//  SimpleCustomCell.h
//  RecetasLEXcode
//
//  Created by David de la Puente on 10/11/13.
//  Copyright (c) 2013 David de la Puente. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleCustomCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *fotoCustomCell;
@property (weak, nonatomic) IBOutlet UILabel *nombreCustomCell;
@property (weak, nonatomic) IBOutlet UILabel *tiempoCustomCell;

@end
