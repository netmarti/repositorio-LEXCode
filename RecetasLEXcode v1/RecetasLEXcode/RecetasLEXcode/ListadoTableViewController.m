//
//  ListadoTableViewController.m
//  RecetasLEXcode
//
//  Created by David de la Puente on 10/11/13.
//  Copyright (c) 2013 David de la Puente. All rights reserved.
//

#import "ListadoTableViewController.h"
#import "Recipe.h"
#import "detalleViewController.h"
#import "SimpleCustomCell.h"

@interface ListadoTableViewController (){
    
    NSMutableArray *lexRecipes;
    
}


@end

@implementation ListadoTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
      
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    lexRecipes = [[NSMutableArray alloc] init];
    
    Recipe *recipe1 = [Recipe recipeWithName:@"Egg Benedict"
                                    prepTime:@"30 min"
                                   imageFile:@"egg_benedict.jpg"
                                  imageThumb:@"thumb_egg_benedict.jpg"
                                 ingredients:[NSArray arrayWithObjects:@"2 fresh English muffins", @"4 eggs", @"4 rashers of back bacon", @"2 egg yolks", @"1 tbsp of lemon juice", @"125 g of butter", @"salt and pepper", nil]];
    
    Recipe *recipe2 = [Recipe recipeWithName:@"Mushroom Risotto"
                                    prepTime:@"30 min"
                                   imageFile:@"mushroom_risotto.jpg"
                                  imageThumb:@"thumb_mushroom_risotto.jpg"
                                 ingredients:[NSArray arrayWithObjects:@"1 tbsp dried porcini mushrooms", @"2 tbsp olive oil", @"1 onion, chopped", @"2 garlic cloves", @"350g/12oz arborio rice", @"1.2 litres/2 pints hot vegetable stock", @"salt and pepper", @"25g/1oz butter", nil]];
    
    Recipe *recipe3 = [Recipe recipeWithName: @"Full Breakfast"
                                    prepTime:@"20 min"
                                   imageFile:@"full_breakfast.jpg"
                                  imageThumb:@"thumb_full_breakfast.jpg"
                                 ingredients:[NSArray arrayWithObjects:@"2 sausages", @"100 grams of mushrooms", @"2 rashers of bacon", @"2 eggs", @"150 grams of baked beans", @"Vegetable oil", nil]];
    
    Recipe *recipe4 = [Recipe recipeWithName: @"Hamburger"
                                    prepTime:@"20 min"
                                   imageFile:@"hamburger.jpg"
                                  imageThumb:@"thumb_hamburger.jpg"
                                 ingredients:[NSArray arrayWithObjects:@"400g of ground beef", @"1/4 onion (minced)", @"1 tbsp butter", @"hamburger bun", @"1 teaspoon dry mustard", @"Salt and pepper", nil]];
    
    Recipe *recipe5 = [Recipe recipeWithName: @"Ham and Egg Sandwich"
                                    prepTime:@"10 min"
                                   imageFile:@"hamburger.jpg"
                                  imageThumb:@"thumb_hamburger.jpg"
                                 ingredients:[NSArray arrayWithObjects:@"400g of ground beef", @"1/4 onion (minced)", @"1 tbsp butter", @"hamburger bun", @"1 teaspoon dry mustard", @"Salt and pepper", nil]];
    
    Recipe *recipe6 = [Recipe recipeWithName: @"Creme Brelee"
                                    prepTime:@"1 hour"
                                   imageFile:@"creme_brelee.jpg"
                                  imageThumb:@"thumb_creme_brelee.jpg"
                                 ingredients: [NSArray arrayWithObjects:@"1 quart heavy cream", @"1 vanilla bean, split and scraped", @"1 cup vanilla sugar", @"6 large egg yolks", @"2 quarts hot water", nil]];
    
    Recipe *recipe7 = [Recipe recipeWithName: @"White Chocolate Donut"
                                    prepTime:@"45 min"
                                   imageFile:@"white_chocolate_donut.jpg"
                                  imageThumb:@"thumb_white_chocolate_donut.jpg"
                                 ingredients:  [NSArray arrayWithObjects:@"3 1/4 cups flour", @"2 teaspoons baking powder", @"1/4 teaspoon salt", @"2 beaten eggs", @"2/3 cup sugar", @"2 ounces melted white chocolate", @"1/2 cup milk", nil]];
    
    Recipe *recipe8 = [Recipe recipeWithName: @"White Chocolate Mocha"
                                    prepTime:@"5 min"
                                   imageFile:@"starbucks_coffee.jpg"
                                  imageThumb:@"thumb_starbucks_coffee.jpg"
                                 ingredients:  [NSArray arrayWithObjects:@"2/3 cup whole milk", @"6 tablespoons white chocolate chips", @"coffee", @"whipped cream", nil]];
    Recipe *recipe9 = [Recipe recipeWithName: @"Vegetable Curry"
                                    prepTime:@"30 min"
                                   imageFile:@"vegetable_curry.jpg"
                                  imageThumb:@"thumb_vegetable_curry.jpg"
                                 ingredients:  [NSArray arrayWithObjects:@"1 tablespoon olive oil", @"1 onion, chopped", @"2 cloves garlic", @"2 1/2 tablespoons curry powder", @"2 quarts hot water", nil]];
    
    Recipe *recipe10 = [Recipe recipeWithName: @"Instant Noodle with Egg"
                                     prepTime:@"8 min"
                                    imageFile:@"instant_noodle_with_egg.jpg"
                                   imageThumb:@"thumb_instant_noodle_with_egg.jpg"
                                  ingredients:  [NSArray arrayWithObjects:@"1 pack of Instant Noodle", @"2 eggs", nil]];
    
    Recipe *recipe11 = [Recipe recipeWithName: @"Noodle with BBQ Pork"
                                     prepTime:@"20 min"
                                    imageFile:@"noodle_with_bbq_pork.jpg"
                                   imageThumb:@"thumb_noodle_with_bbq_pork.jpg"
                                  ingredients:  [NSArray arrayWithObjects:@"1 pack of Instant Noodle", @"BBQ pork", @"Salt and Pepper", nil]];
    
    Recipe *recipe12 = [Recipe recipeWithName: @"Japanese Noodle with Pork"
                                     prepTime:@"20 min"
                                    imageFile:@"japanese_noodle_with_pork.jpg"
                                   imageThumb:@"thumb_japanese_noodle_with_pork.jpg"
                                  ingredients:[NSArray arrayWithObjects:@"1 pack of Japanese Noodle", @"2 green onions", @"2 garlic cloves, minced", @"4 boneless pork loin chops", nil]];
    
    Recipe *recipe13 = [Recipe recipeWithName: @"Green Tea"
                                     prepTime:@"5 min"
                                    imageFile:@"green_tea.jpg"
                                   imageThumb:@"thumb_green_tea.jpg"
                                  ingredients: [NSArray arrayWithObjects:@"Green tea", nil]];
    
    Recipe *recipe14 = [Recipe recipeWithName: @"Thai Shrimp Cake"
                                     prepTime:@"1.5 hours"
                                    imageFile:@"thai_shrimp_cake.jpg"
                                   imageThumb:@"thumb_thai_shrimp_cake.jpg"
                                  ingredients: [NSArray arrayWithObjects:@"8 oz (250g) peeled and deveined raw shrimp", @"2 tablespoons red curry paste", @"1 large egg", @"2 teaspoon fish sauce", @"1 tablespoon sugar", @"2 tablespoons coconut milk", @"2 tablespoons roughly chopped Thai basil leaves", nil]];
    
    Recipe *recipe15 = [Recipe recipeWithName: @"Angry Birds Cake"
                                     prepTime:@"4 hours"
                                    imageFile:@"angry_birds_cake.jpg"
                                   imageThumb:@"thumb_angry_birds_cake.jpg"
                                  ingredients: [NSArray arrayWithObjects:@"12 tablespoons (1 1/2 sticks) unsalted butter", @"2 1/2 cups all-purpose flour", @"1 tablespoon baking powder", @"1 teaspoon salt", @"1 3/4 cups sugar", @"2 large eggs, plus 3 large egg yolks", @"1 cup of milk", nil]];
    Recipe *recipe16 = [Recipe recipeWithName: @"Ham and Cheese Panini"
                                     prepTime:@"10 min"
                                    imageFile:@"ham_and_cheese_panini.jpg"
                                   imageThumb:@"thumb_ham_and_cheese_panini.jpg"
                                  ingredients:[NSArray arrayWithObjects:@"2 tablespoons unsalted butter", @"4 cups thinly sliced shallots", @"2 teaspoons fresh thyme", @"1/4 cup grainy Dijon mustard", @"8 slices rustic white bread", @"8 slices Gruyere cheese", @"8 ounces sliced cooked ham", nil]];
    
    lexRecipes = [NSMutableArray arrayWithObjects:recipe1, recipe2, recipe3, recipe4, recipe5, recipe6, recipe7, recipe8, recipe9, recipe10, recipe11, recipe12, recipe13, recipe14, recipe15, recipe16, nil];
    
}
- (void)viewWillAppear:(BOOL)animated{
    
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:163/255.0f green:212/255.0f blue:202/255.0f alpha:1] ];
 
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [lexRecipes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Celda";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];

    SimpleCustomCell *cell = (SimpleCustomCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];

    // Configure the cell...
    Recipe *recipe = nil;
    recipe = [lexRecipes objectAtIndex:indexPath.row];
//    
//    cell.textLabel.text = recipe.name;
//    cell.imageView.image = [UIImage imageNamed:recipe.imageThumb];
 

        cell.nombreCustomCell.text = recipe.name;
        cell.tiempoCustomCell.text = recipe.prepTime;
        cell.fotoCustomCell.image = [UIImage imageNamed:recipe.imageThumb];

    
    cell.tag = indexPath.row;
    
    return cell;
}

#pragma mark - PrepareForSegue

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"irADetalle"]){
        detalleViewController *detalleVC = (detalleViewController *)segue.destinationViewController;
        
        UITableViewCell *cell = (UITableViewCell *)sender;
        
        detalleVC.modelo = [lexRecipes objectAtIndex:cell.tag];
    
    }
}

@end
