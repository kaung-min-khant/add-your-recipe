//
//  RecipesViewModel.swift
//  add-your-recipe
//
//  Created by Kaung Min Khant on 8/13/23.
//

import Foundation

class RecipesViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []

    init() {
        recipes = Recipe.all
    }
    
    func addRecipe(recipe: Recipe) {
          recipes.append(recipe)
    }
}
