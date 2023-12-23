//
//  RecipeView.swift
//  RecipeSaver
//
//  Created by Jeff Barra on 12/22/23.
//

import SwiftUI

struct RecipeView: View {
    var recipe: Recipe

    
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: UIScreen.main.bounds.width)
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .scaledToFill()
                .frame(height: 300, alignment: .center)
                .clipped()
            
            // Recipe name
            VStack(spacing: 30) {
                Text(recipe.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)

            }
            
            Spacer(minLength: 20)
            
            // Recipe description, ingredients, and directions
            VStack(alignment: .leading, spacing: 30) {
                if !recipe.description.isEmpty {
                    Text(recipe.description)
                }
                
                if !recipe.ingredients.isEmpty {
                    // Recipe ingredients
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Ingredients")
                            .font(.title2)
                            .fontWeight(.bold)
                        Text(recipe.ingredients)
                    }
                }
                
                if !recipe.directions.isEmpty {
                    // Recipe directions
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Directions")
                            .font(.title2)
                            .fontWeight(.bold)
                        Text(recipe.directions)
                    }
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            // padding in text area below title
            .padding(.horizontal)
        }
        // remove white space at the top
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: Recipe.all[0])
    }
}
