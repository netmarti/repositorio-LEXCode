//
//  Recipe.h
//  RecepiteBook
//
//  Created by David de la Puente on 06/11/13.
//  Copyright (c) 2013 David de la Puente. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Recipe : NSObject

@property (nonatomic, strong) NSString *name; // name of recipe
@property (nonatomic, strong) NSString *prepTime; // preparation time
@property (strong, nonatomic) NSString *imageFile; // image filename of recipe
@property (strong, nonatomic) NSString *imageThumb; // image thumb of recipe
@property (nonatomic, strong) NSArray *ingredients; // ingredients



//Metodos de clase
+(id) recipeWithName: (NSString *) aName
          prepTime:(NSString *) aPreptime
         imageFile:(NSString *) aImageFile
           imageThumb:(NSString *) aImageThumb
         ingredients: (NSArray *) aIngredients;

+(id) recipeWithName: (NSString *) aName;

//designado
-(id) initWithName: (NSString *) aName
          prepTime:(NSString *) aPreptime
         imageFile:(NSString *) aImageFile
        imageThumb:(NSString *) aImageThumb
       ingredients: (NSArray *) aIngredients;

//de coveniencia
-(id) initWithName: (NSString *) aName;

@end
