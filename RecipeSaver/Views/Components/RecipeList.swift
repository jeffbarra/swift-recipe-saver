//
//  RecipeList.swift
//  RecipeSaver
//
//  Created by Jeff Barra on 12/22/23.
//

import SwiftUI

struct RecipeList: View {
    // recipe list accepts Recipe array as prop
    var recipes: [Recipe]
    
    var body: some View {
        // align recipes in grid layout
        VStack {
            // horizontal grid
            HStack {
                // display how many recipes (if plural = "recipes")
                Text("\(recipes.count) \(recipes.count > 1 ? "recipes" : "recipe")")
                    .font(.headline)
                    .fontWeight(.medium)
                .opacity(0.7)
                
                Spacer()
            }
            // veritcal grid that displays endless amount of data
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15) {
                ForEach(recipes) {
                    recipe in
                    // go to RecipeView when card is clicked
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

#Preview {
    ScrollView {
        RecipeList(recipes: Recipe.all)
    }
}
