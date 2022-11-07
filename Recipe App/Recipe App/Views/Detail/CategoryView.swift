//
//  CategoryView.swift
//  Recipe App
//
//  Created by Aurelio Le Clarke on 04.11.2022.
//

import SwiftUI

struct CategoryView: View {
    var category: Category
    @EnvironmentObject var recipesViewModel: RecipesViewModel
    var recipes: [RecipeModel] {
        return recipesViewModel.recipes.filter{ $0.category == category.rawValue}
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
        CategoryView(category: Category.burger)
            .environmentObject(RecipesViewModel())
    }
}
