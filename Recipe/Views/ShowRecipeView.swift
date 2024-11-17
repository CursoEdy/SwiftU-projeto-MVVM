//
//  ShowRecipeView.swift
//  Recipe
//
//  Created by ednardo alves on 16/11/24.
//

import SwiftUI

struct ShowRecipeView: View {
    
    let theRecipe: String
    let imageName: String
    let recipeURL: String
    
    let imageDim: CGFloat = 200
    
    var body: some View {
        ZStack {
            Color.gray.opacity(0.5)
                .ignoresSafeArea()
            
            VStack {
                
                VStack {
                    ScrollView {
                        Text(theRecipe)
                            .padding()
                    }
                    
                    Spacer()
                    
                    Link(destination: URL(string: recipeURL)!, label: {
                        Image(imageName)
                            .resizable()
                            .frame(width: imageDim, height: imageDim)
                            .cornerRadius(10)
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 3))
                    })
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ShowRecipeView(
        theRecipe: "Esta é uma receita ilustativa para preenchimento de conteudo e visualizaçao da view",
        imageName: "IMGhummus",
        recipeURL: "https://www.google.com")
}
