//
//  ContentView.swift
//  Recipe
//
//  Created by ednardo alves on 16/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            RecipeView()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
