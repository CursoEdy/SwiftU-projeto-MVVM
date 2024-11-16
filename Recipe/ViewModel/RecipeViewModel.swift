//
//  RecipeViewModel.swift
//  Recipe
//
//  Created by ednardo alves on 16/11/24.
//

import Foundation

class RecipeViewModel: ObservableObject {
    @Published var recipeModels: [RecipeModel] = []
    
    //initialize the model
    init() {
        recipeModels.append(
        RecipeModel(
            name: "Hummus",
            caloriesPer100Grams: 322,
            recipe: """
            ***Ingredients***
            -...
            -...
            -...
            -...
            -...
            -...
            """,
            recipeImage: "IMGHummus",
            recipeURL: "https://www.google.com/webhp?hl=pt-BR&sa=X&ved=0ahUKEwi26IeDguKJAxWRILkGHdoOPQ4QPAgI")
        )
        recipeModels.append(
        RecipeModel(
            name: "Homemade Pizza",
            caloriesPer100Grams: 116,
            recipe: """
            ***Ingredients***
            - pizza Stuff
            -...
            -...
            -...
            -...
            -...
            """,
            recipeImage: "IMGPizza",
            recipeURL: "https://www.google.com/webhp?hl=pt-BR&sa=X&ved=0ahUKEwi26IeDguKJAxWRILkGHdoOPQ4QPAgI")
        )
        recipeModels.append(
        RecipeModel(
            name: "Apple Pie",
            caloriesPer100Grams: 237,
            recipe: """
            ***Ingredients***
            - Apple
            -...
            -...
            -...
            -...
            -...
            """,
            recipeImage: "IMGApplePie",
            recipeURL: "https://www.google.com/webhp?hl=pt-BR&sa=X&ved=0ahUKEwi26IeDguKJAxWRILkGHdoOPQ4QPAgI")
        )
    }
}
