//
//  NewRecipesView.swift
//  RecipeSaver
//
//  Created by Jeff Barra on 12/22/23.
//

import SwiftUI

struct NewRecipesView: View {
    // show bottom sheet set to false
    @State private var showAddRecipe = false
    
    var body: some View {
        NavigationView {
            // show bottom sheet when button is toggled
            Button("Add recipe manually") {
                showAddRecipe = true
            }
                .navigationTitle("New Recipes")
        }
        .navigationViewStyle(.stack)
        // show AddRecipeView bottom sheet
        .sheet(isPresented: $showAddRecipe) {
            AddRecipeView()
        }
    }
}

struct NewRecipesView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipesView()
    }
}

