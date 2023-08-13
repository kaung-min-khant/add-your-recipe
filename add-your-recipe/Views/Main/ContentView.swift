//
//  ContentView.swift
//  add-your-recipe
//
//  Created by Kaung Min Khant on 8/13/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBar()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(RecipesViewModel())
    }
}
