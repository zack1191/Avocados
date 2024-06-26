//
//  RecipeRatingView.swift
//  AVOCADOS
//
//  Created by Hein Htet Aung on 2024/06/25.
//

import SwiftUI
struct RecipeRatingView: View {
    var recipe:Recipe

    var body: some View {
        HStack(alignment: .center,spacing: 5){
            ForEach(1...(recipe.rating),id:\.self){_ in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(Color.yellow)
            }
        }
    }
}

#Preview {
    RecipeRatingView(recipe:recipesData[0])
}
