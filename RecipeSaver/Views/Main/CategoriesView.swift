//
//  CategoriesView.swift
//  RecipeSaver
//
//  Created by Jeff Barra on 12/22/23.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView {
            List {
                // navigate to the category when clicked
                ForEach(Category.allCases) {
                    category in
                    NavigationLink(destination: ScrollView {
                        RecipeList(recipes: Recipe.all.filter { $0.category == category.rawValue })
                    }
                        .navigationTitle(category.rawValue + "s")) {
                        // add "s" to the categories (from model)
                        Text(category.rawValue + "s")
                    }

                   
                }
            }                .navigationTitle("Categories")
        }
        .navigationViewStyle(.stack)
    }
    
    
    struct CategoriesView_Previews: PreviewProvider {
        static var previews: some View {
            CategoriesView()
        }
    }
    
}
