//
//  FavoritesView.swift
//  RecipeSaver
//
//  Created by Jeff Barra on 12/22/23.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            Text("You haven't saved any recipes to your favorites yet!")
                .padding()
                .multilineTextAlignment(.center)
                .navigationTitle("Favorites")
        }
        .navigationViewStyle(.stack)
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
