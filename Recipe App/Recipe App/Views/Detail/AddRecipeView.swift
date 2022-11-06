//
//  AddRecipeView.swift
//  Recipe App
//
//  Created by Aurelio Le Clarke on 04.11.2022.
//

import SwiftUI

struct AddRecipeView: View {
    @State private var name: String = ""
    @State private var category: Category = Category.main
    @State private var description: String = ""
    @State private var ingridients: String = ""
    @State private var directions: String = ""
   
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Name")) {
                    TextField("Recipe name", text: $name) {
                        
                    }
                }
                Section(header: Text("Category")) {
                    Picker("Category",selection: $category) {
                        ForEach(Category.allCases) { category in
                            Text(category.rawValue)
                        }
                    }
                }
                Section(header: Text("Description")) {
                    TextField("Description", text: $description) {
                        
                    }
                }
                Section(header: Text("Ingredients")) {
                    TextField("Ingridients", text: $ingridients) {
                        
                    }
                }
                Section(header: Text("Directions")) {
                    TextField("Directions", text: $directions) {
                        
                    }
                }
            }
            .navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
    }
}
