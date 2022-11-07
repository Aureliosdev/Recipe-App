//
//  RecipeViewModel.swift
//  Recipe App
//
//  Created by Aurelio Le Clarke on 07.11.2022.
//

import Foundation

class RecipesViewModel: ObservableObject {
   @Published private(set) var recipes: [RecipeModel] = []
    
    
    
    init() {
        recipes = RecipeModel.all
    }
    
    func addRecipe(recipe: RecipeModel) {
        recipes.append(recipe)
    }
}

