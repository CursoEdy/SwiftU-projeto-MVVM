//
//  RecipeView.swift
//  Recipe
//
//  Created by ednardo alves on 16/11/24.
//

import SwiftUI

struct RecipeView: View {
    
    @StateObject var recipeViewModel: RecipeViewModel = RecipeViewModel()
    
    var body: some View {
            List (self.recipeViewModel.recipeModels) { item in
                NavigationLink (destination: {
                    ShowRecipeView(theRecipe: item.recipe, imageName: item.recipeImage, recipeURL: item.recipeURL)
                        .navigationBarTitle("", displayMode: .inline)
                }, label: {
                    ListItemView(name: item.name, caloriesPer100Grams: item.caloriesPer100Grams, recipeImage: item.recipeImage)
                })
            }.navigationTitle("Recipes")
    }
}

#Preview {
    RecipeView()
}
