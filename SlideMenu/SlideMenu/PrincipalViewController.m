//
//  PrincipalViewController.m
//  SlideMenu
//
//  Created by David de la Puente on 12/11/13.
//  Copyright (c) 2013 David de la Puente. All rights reserved.
//

#import "PrincipalViewController.h"
#import "ECSlidingViewController.h"
#import "MenuOpcionesViewController.h"

@interface PrincipalViewController ()

@end

@implementation PrincipalViewController

@synthesize menuBtn;

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
    
    //Ponemos los bordes redondeado del lado del menu con sobra negra
    self.view.layer.shadowOpacity = 0.75f;
    self.view.layer.shadowRadius = 10.00f;
    self.view.layer.shadowColor = [UIColor blackColor].CGColor;
    
    
    if (![self.slidingViewController.underLeftViewController isKindOfClass:[MenuOpcionesViewController class]]) {
        self.slidingViewController.underLeftViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Menu"];
    }
    
    [self.view addGestureRecognizer:self.slidingViewController.panGesture];
    
    self.menuBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    menuBtn.frame = CGRectMake(8, 10, 68, 68);
    [menuBtn setBackgroundImage:[UIImage imageNamed:@"menu-boton.png"] forState:UIControlStateNormal];
    [menuBtn addTarget:self action:@selector(revealMenu:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.menuBtn];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)revealMenu:(id)sender{
    [self.slidingViewController anchorTopViewTo:ECRight];
}
@end
