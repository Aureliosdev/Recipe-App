//
//  RecipeCard.swift
//  Recipe App
//
//  Created by Aurelio Le Clarke on 01.11.2022.
//

import SwiftUI

struct RecipeCard: View {
    var recipe: RecipeModel
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .overlay(alignment: .bottom) {
                        Text(recipe.name)
                            .font(.headline)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .shadow(color: .black, radius: 3,x: 0,y: 0)
                            .frame(maxWidth: 136)
                            .padding(.leading, -20)
                            .padding(.bottom,10)
            
                        
                    }
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40,alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity,maxHeight: .infinity)
                    .overlay(alignment: .bottom) {
                        Text(recipe.name)
                            .font(.headline)
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 5,x: 0,y: 0)
                            .frame(maxWidth: 136)
                            .padding()
                    }
            }
        }
            .frame(width: 160, height: 217,alignment: .top)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerRadius: 20,style: .continuous))
            .shadow(color: Color(.black), radius: 7)
            
            
            
        }
    }
    
    struct RecipeCard_Previews: PreviewProvider {
        static var previews: some View {
            RecipeCard(recipe: RecipeModel.all[0])
        }
    }

