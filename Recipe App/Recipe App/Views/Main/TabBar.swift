//
//  TabBar.swift
//  Recipe App
//
//  Created by Aurelio Le Clarke on 27.10.2022.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                    
                }
            CategoriesView()
                .tabItem {
                    Label("Categories", systemImage: "square.fill.text.grid.1x2")
                    
                }
            AddRecipeView()
                .tabItem {
                    Label("New", systemImage: "plus")
                    
                }
            FavouritesView()
                .tabItem {
                    Label("Favourites", systemImage: "heart")
                    
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                    
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .environmentObject(RecipesViewModel())
    }
}
