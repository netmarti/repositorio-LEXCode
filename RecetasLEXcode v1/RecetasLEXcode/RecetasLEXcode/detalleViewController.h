//
//  detalleViewController.h
//  RecetasLEXcode
//
//  Created by David de la Puente on 10/11/13.
//  Copyright (c) 2013 David de la Puente. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Recipe.h"

@interface detalleViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *nombreLabel;
@property (weak, nonatomic) IBOutlet UILabel *tiempoLabel;
@property (weak, nonatomic) IBOutlet UILabel *ingredienteslabel;
@property (weak, nonatomic) IBOutlet UIImageView *fotoImage;

@property (nonatomic, strong) Recipe *modelo;

@end
