//
//  RecipeView.swift
//  Recipe App
//
//  Created by Aurelio Le Clarke on 04.11.2022.
//

import SwiftUI

struct RecipeView: View {
    var recipe: RecipeModel
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 10,alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity,maxHeight: .infinity)
            }
            .frame(height:300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            .padding(.vertical,30)
            
            VStack(spacing: 30) {
                Text(recipe.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                    
                    
               
                VStack(alignment: .leading,spacing: 30) {
                    if !recipe.description.isEmpty {
                        Text(recipe.description)
                    }
                    if !recipe.ingredients.description.isEmpty {
                        VStack(alignment: .leading,spacing: 20) {
                           
                            Text("Ingridients")
                                .font(.headline)
                            Text(recipe.ingredients)
                        }
                    }
                    if !recipe.directions.description.isEmpty {
                        VStack(alignment: .leading,spacing: 20) {
                            Text("Directions")
                                .font(.headline)
                            Text(recipe.directions)
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
            }
            .padding(.horizontal)
            .padding(.vertical)
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: RecipeModel.all[0])
    }
}
