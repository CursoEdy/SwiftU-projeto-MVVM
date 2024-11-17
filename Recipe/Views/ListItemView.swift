//
//  ListItemView.swift
//  Recipe
//
//  Created by ednardo alves on 16/11/24.
//

import SwiftUI

struct ListItemView: View {
    let name: String
    let caloriesPer100Grams: Int
    let recipeImage: String
    
    let iamgeDim: CGFloat = 70
    
    var body: some View {
        HStack {
            VStack (alignment: .leading, spacing: 5) {
                Text(name)
                    .font(.headline)
                    .foregroundStyle(.orange)
                Text("\(caloriesPer100Grams) calories per 100 grams.")
                    .font(.caption)
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
            }
            
            Spacer()
            Image(recipeImage)
                .resizable()
                .frame(width: iamgeDim, height: iamgeDim)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.white, lineWidth: 3)
                )
                .shadow(color: .white.opacity(0.5), radius: 3, x: 1, y:1)
        }
        .padding()
        .background(Color.black.opacity(0.5).cornerRadius(10))
    }
}

#Preview {
    ListItemView(
        name: "Hummus",
        caloriesPer100Grams: 322,
        recipeImage: "IMGhummus")
}
