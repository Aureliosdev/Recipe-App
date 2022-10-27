//
//  FavouritesView.swift
//  Recipe App
//
//  Created by Aurelio Le Clarke on 22.10.2022.
//

import SwiftUI

struct FavouritesView: View {
    var body: some View {
        NavigationView {
            Text("Favourites")
                .padding()
                .navigationTitle("Favourites")
            
        }
    }
}

struct FavouritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavouritesView()
    }
}
