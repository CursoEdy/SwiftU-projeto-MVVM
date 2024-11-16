//
//  RecipeModel.swift
//  Recipe
//
//  Created by ednardo alves on 16/11/24.
//

import Foundation

struct RecipeModel: Codable, Identifiable {
    
    let id = UUID()
    let name: String
    let caloriesPer100Grams: Int
    let recipe: String
    let recipeImage: String
    let recipeURL: String
    
}
