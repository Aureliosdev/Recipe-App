//
//  AddRecipeView.swift
//  Recipe App
//
//  Created by Aurelio Le Clarke on 04.11.2022.
//

import SwiftUI

struct AddRecipeView: View {
    @EnvironmentObject var recipesViewModel: RecipesViewModel
    @State private var name: String = ""
    @State private var category: Category = Category.main
    @State private var description: String = ""
    @State private var ingridients: String = ""
    @State private var directions: String = ""
    @State private var navigateToRecipe: Bool = false
    @Environment(\.dismiss) var dismiss
    
    
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
                                //saves current category
                                .tag(category)
                        }
                    }
                    .pickerStyle(.menu)
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
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                

                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(isActive: $navigateToRecipe) {
                        RecipeView(recipe: recipesViewModel.recipes.sorted { $0 .datePublished > $1.datePublished }[0])
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Button {
                            saveRecipe()
                            navigateToRecipe = true
                        } label: {
                            Label("Done", systemImage: "checkmark")
                                .labelStyle(.iconOnly)
                        }
                        //disables checkmark untill is empty name
                  
                    }   
                    .disabled(name.isEmpty)
                 
                }
            })
            .navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
            .environmentObject(RecipesViewModel())
    }
}

extension AddRecipeView  {
    private func saveRecipe() {
        let  now  = Date()
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "yyyy-mm-dd"
        
        let datePublished = dateFormatter.string(from: now)
        print(datePublished)
        let recipe = RecipeModel(name:name,
                                 image: "",
                                 description: description,
                                 ingredients: ingridients,
                                 directions: directions,
                                 category:category.rawValue ,
                                 datePublished:datePublished,
                                 url: "")
        
        recipesViewModel.addRecipe(recipe:recipe)
    }
}
