    //
    //  ContentView.swift
    //  AVOCADOS
    //
    //  Created by Hein Htet Aung on 2024/06/24.
    //

import SwiftUI
import CoreData

struct ContentView: View {
    var headers:[Header] = headersData
    var facts:[Fact] = factsData
    var recipes:[Recipe] = recipesData
    var body: some View{
        // MARK: - Header
        ScrollView(.vertical,showsIndicators:false){
            VStack(alignment: .center,spacing: 20){
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(alignment: .top,spacing: 0) {
                        ForEach(headers){item in
                            HeaderView(header: item)
                        }
                    }}
                Text("Avocado Dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                DishesView().frame(maxWidth: 640)
                // MARK: - Avocado Facts
                Text("Avocado Facts")
                    .fontWeight(.bold).modifier(TitleModifier())
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(alignment: .top,spacing: 60){
                        ForEach(facts){item in
                            FactsView(fact:item)
                        }
                    }
                    .padding(.vertical)
                    .padding(.leading,60)
                    .padding(.trailing,20)}
                Text("Avocado Recipes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                VStack(alignment: .center,spacing: 20){
                    ForEach(recipes) { item in
                        RecipeCardView(recipe: item)
                    }
                }.frame(maxWidth: 640)
                    .padding(.horizontal)
                VStack(alignment: .center,spacing: 20) {
                    Text("All About Avocados")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    .padding(8)
                    Text("Everything you wanted to know about avocados but were too afraid to ask.")
                        .font(.system(.body,design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom,85)
               
            }
            
        }
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}
struct TitleModifier:ViewModifier{
    func body(content: Content) -> some View {
        content.font(.system(.title,design: .serif))
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}


#Preview {
    ContentView(headers: headersData,facts: factsData,recipes: recipesData)
}
