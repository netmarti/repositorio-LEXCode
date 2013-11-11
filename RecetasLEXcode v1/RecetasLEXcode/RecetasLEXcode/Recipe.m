//
//  Recipe.m
//  RecepiteBook
//
//  Created by David de la Puente on 06/11/13.
//  Copyright (c) 2013 David de la Puente. All rights reserved.
//

#import "Recipe.h"

@implementation Recipe

+(id)recipeWithName: (NSString *) aName
            prepTime:(NSString *) aPreptime
           imageFile:(NSString *) aImageFile
         imageThumb:(NSString *) aImageThumb
        ingredients: (NSArray *) aIngredients{
    
    return [[self alloc] initWithName:aName
                               prepTime:aPreptime
                              imageFile:aImageFile
                              imageThumb:aImageThumb
                          ingredients:aIngredients];

}

+(id)recipeWithName: (NSString *) aName{
    
    return [[self alloc] initWithName:aName];
    
}

#pragma - mark Init

-(id) initWithName:(NSString *)aName
          prepTime:(NSString *)aPreptime
         imageFile:(NSString *)aImageFile
        imageThumb:(NSString *) aImageThumb
       ingredients: (NSArray *) aIngredients{
    
    if (self = [super init]) {
        //Asignamos los parametros a las var de instancia
        _name = aName;
        _prepTime = aPreptime;
        _imageFile = aImageFile;
        _imageThumb = aImageThumb;
        _ingredients = aIngredients;
        
    }
    return self;
}

-(id) initWithName:(NSString *)aName{
    
     if(self = [super init]) {
        //Asignamos los parametros a las var de instancia
        _name = aName;
        _prepTime = nil;
        _imageFile = nil;
        _imageThumb = nil;
        _ingredients = nil;
        
    }
    return self;


}


#pragma mark - DESCRIPTION

-(NSString *) description{
    return [NSString stringWithFormat:@"<%@: %@ %@ %@ %@>", [self class], [self name], [self prepTime], [self imageThumb], [self imageFile]];
}

@end
