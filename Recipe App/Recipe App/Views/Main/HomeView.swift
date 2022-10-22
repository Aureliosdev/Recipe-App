//
//  HomeView.swift
//  Recipe App
//
//  Created by Aurelio Le Clarke on 22.10.2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            Text("My Recipes")
                .navigationTitle("My recipes")
        }
       
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
