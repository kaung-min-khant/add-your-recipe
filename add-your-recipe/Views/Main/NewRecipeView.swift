//
//  NewRecipeView.swift
//  add-your-recipe
//
//  Created by Kaung Min Khant on 8/13/23.
//

import SwiftUI

struct NewRecipeView: View {
    @State private var showAddRecipe = false

    var body: some View {
        NavigationView {
            Button("Add recipe manually") {
                showAddRecipe = true
            }
            .navigationTitle("New recipe")
        }
        .navigationViewStyle(.stack)
        .sheet(isPresented: $showAddRecipe) {
            AddRecipeView()
        }
    }
}
struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
