//
//  AddRecipeView.swift
//  RecipeSaver
//
//  Created by Jeff Barra on 12/23/23.
//

import SwiftUI

// Add Recipe View Bottom Sheet
struct AddRecipeView: View {
    @State private var name: String = ""
    @State private var selectedCategory: Category = Category.main
    @State private var description: String = ""
    @State private var ingredients: String = ""
    @State private var directions: String = ""
    @State private var navigateToRecipe = false
    
    // cancel button functionality (dismiss)
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            Form {
                // name field
                Section(header: Text("Name")) {
                    TextField("Recipe Name", text: $name)
                }
                // category picker
                Section(header: Text("Category")) {
                    Picker("Category", selection: $selectedCategory) {
                        ForEach(Category.allCases) { category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }
                    .pickerStyle(.menu)
                }
                // text editor
                Section(header: Text("Description")) {
                    TextEditor(text: $description)
                    
                }
                // text editor
                Section(header: Text("Ingredients")) {
                    TextEditor(text: $ingredients)
                }
                // text editor
                Section(header: Text("Directions")) {
                    TextEditor(text: $directions)
                }
            }
            // buttons at the top
            .toolbar(content: {
                // cancel button
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        // dismiss the bottom sheet when cancel button is pressed
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }                }
                
                // check mark button (disabled if no content)
                ToolbarItem {
                    NavigationLink(isActive: $navigateToRecipe){
                        RecipeView(recipe: Recipe.all.sorted{ $0.datePublished > $1.datePublished }[0])
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Button {
                            navigateToRecipe = true
                        } label: {
                            Label("Done", systemImage: "checkmark")
                                .labelStyle(.iconOnly)
                        }
                    }
                    .disabled(name.isEmpty)
                }
            })
            .navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    AddRecipeView()
}
