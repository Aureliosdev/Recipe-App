//
//  Recipe_AppApp.swift
//  Recipe App
//
//  Created by Aurelio Le Clarke on 21.10.2022.
//

import SwiftUI

@main
struct Recipe_AppApp: App {
   @StateObject var recipesViewModel = RecipesViewModel()
     
    var body: some Scene {
        WindowGroup {
           TabBar()
                .environmentObject(recipesViewModel)
            
        }
    }
}
