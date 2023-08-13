//
//  CategoryView.swift
//  add-your-recipe
//
//  Created by Kaung Min Khant on 8/13/23.
//

import SwiftUI

struct CategoryView: View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    var category: Category
    
    var recipes: [Recipe] {
        return recipesVM.recipes.filter{ $0.category == category.rawValue
        }
    }

    var body: some View {
        ScrollView {
            RecipeList(recipes: recipes)
        }
        .navigationTitle(category.rawValue + "s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.dessert)
            .environmentObject(RecipesViewModel())
    }
}

