//
//  detalleViewController.m
//  RecetasLEXcode
//
//  Created by David de la Puente on 10/11/13.
//  Copyright (c) 2013 David de la Puente. All rights reserved.
//

#import "detalleViewController.h"

@interface detalleViewController ()

@end

@implementation detalleViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated{
    

 [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:163/255.0f green:212/255.0f blue:202/255.0f alpha:1] ];
 
    
    self.nombreLabel.text = self.modelo.name;
    self.tiempoLabel.text = self.modelo.prepTime;

    self.fotoImage.image = [UIImage imageNamed:self.modelo.imageFile];
    
    NSMutableString *ingredientText = [NSMutableString string];
    for (NSString* ingredient in self.modelo.ingredients) {
        [ingredientText appendFormat:@"%@\n", ingredient];
    }
    self.ingredienteslabel.text = ingredientText;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
