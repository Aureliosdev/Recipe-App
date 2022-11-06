//
//  RecipeList.swift
//  Recipe App
//
//  Created by Aurelio Le Clarke on 01.11.2022.
//

import SwiftUI

struct RecipeList: View {
    
    var recipes: [RecipeModel]
    
    var body: some View {
        VStack {
            HStack {
                Text("\(recipes.count) \(recipes.count > 1 ? " recipes" : "recipe")")
                    .fontWeight(.medium)
                    .opacity(0.7)
               
                Spacer()
                
               
            }
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)],spacing: 15) {
                ForEach(recipes) { recipe in
                    NavigationLink(destination: RecipeView(recipe: recipe)) {
                        RecipeCard(recipe: recipe)
                    }
                      
                    }
            }
            .padding(.top)
        }
        .padding(.horizontal)
    }
}


struct RecipeList_Previews: PreviewProvider {
   
    static var previews: some View {
        ScrollView {
            RecipeList(recipes: RecipeModel.all)
        }
   
      
    }
}
