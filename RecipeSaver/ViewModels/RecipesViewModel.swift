//
//  RecipesViewModel.swift
//  RecipeSaver
//
//  Created by Jeff Barra on 12/23/23.
//

import Foundation

class RecipesViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []
    
    init() {
        recipes = Recipe.all
    }
    
}
