//
//  RecipeCookingView.swift
//  AVOCADOS
//
//  Created by Hein Htet Aung on 2024/06/25.
//

import SwiftUI

struct RecipeCookingView: View {
    var recipe:Recipe
    var body: some View {
        HStack(alignment: .center,spacing: 12){
            HStack(alignment: .center,spacing: 2){
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            }
            HStack(alignment: .center,spacing: 2){
                Image(systemName: "clock")
                Text("Prep: \(recipe.preparation)")
            }
            HStack(alignment: .center,spacing: 2){
                Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking)")
            }
            
            
        }.font(.footnote)
            .foregroundColor(Color.gray)
    }
}

#Preview {
    RecipeCookingView(recipe: recipesData[0]).previewLayout(.fixed(width: 320, height: 60))
}
