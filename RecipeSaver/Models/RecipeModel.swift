//
//  RecipeModel.swift
//  RecipeSaver
//
//  Created by Jeff Barra on 12/22/23.
//

import Foundation

// Category parameter for Recipe model
enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

// Model for recipes
struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

// Store all recipes in array using the Recipe parameters from above
extension Recipe {
    static let all: [Recipe] = [
        Recipe(name: "Bacon-Wrapped Dates Stuffed with Manchego Cheese",
               image: "https://www.allrecipes.com/thmb/fF3TH1RgePgpCi5UWZCmq4kr6EA=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/1783996-d9240123d4ca4b938f1f9ac2fe7e2bfa.jpg",
               description: "A traditional Spanish 'tapas' item. You can also add a sprinkling of toasted breadcrumbs on top for a bit of extra crunch. May serve immediately or at room temperature.",
               ingredients: "ingredients list",
               directions: "Preheat oven to 400 degrees F (200 degrees C). Stuff 1 piece manchego cheese into each date and then wrap with 1 piece bacon, securing with a toothpick. Arrange dates in a shallow baking dish with the bacon seam down and 1 inch between pieces. Bake in preheated oven for 5 minutes, turn dates with tongs, and continue baking until bacon is crisp, 5 to 6 minutes more. Drain on a plate lined with paper towels.",
               category: "Appetizer",
               datePublished: "06-19-2013",
               url: "https://www.allrecipes.com/recipe/232969/bacon-wrapped-dates-stuffed-with-manchego-cheese/"
              ),
        
        Recipe(name: "Cheesy Hame and Hash Brown Casserole",
               image: "https://www.allrecipes.com/thmb/_A1Filu7CPXMo4fa3CG1WfTG05A=/0x512/filters:no_upscale():max_bytes(150000):strip_icc()/566024_original-2000-159de3f761814a81823d56ac8a0ea092.jpg",
               description: "This ham and hash brown casserole is quick and easy to make, not to mention delicious! I mostly serve this as a breakfast casserole, but it's great anytime. It may be served with or without diced ham.",
               ingredients: "ingredients list",
               directions: "Preheat the oven to 375 degrees F (190 degrees C). Lightly grease a 9x13-inch baking dish with cooking spray. Mix together hash browns, condensed soup, sour cream, Cheddar cheese, and ham in a bowl until well combined. Spread evenly into the prepared dish. Sprinkle with Parmesan cheese. Bake in the preheated oven until bubbly and lightly brown, about 1 hour.",
               category: "Main",
               datePublished: "12-14-2023",
               url: "https://www.allrecipes.com/recipe/20096/cheesy-ham-and-hash-brown-casserole/"
              ),
        
        Recipe(name: "Chef John's Best Christmas Cookies",
               image: "https://www.allrecipes.com/thmb/EWD0CWKp1W9JWPHCOD3Ie-gCMMk=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/6141819_Perfect-Thumbprint-Cookies-4x3-7a47d9e538f2455ab74807c23b44dd35.jpg",
               description: "Need a little help making the nice list this year? Get Santa on your side with one or all of Chef John's best Christmas cookie recipes. Each one comes with a step-by-step video so you can watch and learn as our favorite wisecracking chef makes cookie-baking look easy. Scroll through to find Chef John's recipes for thumbprint cookies, rum balls, and Russian tea cakes, plus classics like chocolate chip and peanut butter cookies.",
               ingredients: "ingredients list",
               directions: "directions",
               category: "Dessert",
               datePublished: "12-7-2023",
               url: "https://www.allrecipes.com/gallery/chef-johns-best-christmas-cookies/")

    ]
}
