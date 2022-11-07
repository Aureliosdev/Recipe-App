//
//  HomeView.swift
//  Recipe App
//
//  Created by Aurelio Le Clarke on 22.10.2022.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var recipesViewModel: RecipesViewModel
    var body: some View {
        NavigationView {
            ScrollView {
                RecipeList(recipes:  recipesViewModel.recipes)
            }
            .navigationTitle("My Recipes")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(RecipesViewModel())
    }
}
