//
//  TabBar.swift
//  RecipeSaver
//
//  Created by Jeff Barra on 12/22/23.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            // Bottom tabs
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            CategoriesView()
                .tabItem {
                    Label("Categories", systemImage: "square.fill.text.grid.1x2")
                }
            
            AddRecipeView()
                .tabItem {
                    Label("New Recipes", systemImage: "plus")
                }
            
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "heart")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settingsi", systemImage: "gear")
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}

// add TabBar to ContentView
