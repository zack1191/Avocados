//
//  DishesVIew.swift
//  AVOCADOS
//
//  Created by Hein Htet Aung on 2024/06/25.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack(alignment: .center,spacing: 4) {
            VStack(alignment: .leading,spacing: 4) {
                HStack(){
                    Image("icon-toasts").resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Toasts")
                }
                Divider()
                HStack(){
                    Image("icon-tacos").resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Tacos")
                }
                Divider()
                HStack(){
                    Image("icon-salads").resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Salads")
                }
                Divider()
                HStack(){
                    Image("icon-halfavo").resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Spreads")
                }
                Divider()
            }
            
            VStack(alignment: .center,spacing: 16) {
                HStack{
                    Divider()
                }
                Image(systemName: "heart.circle").imageScale(.large)
                    .font(Font.title.weight(.ultraLight))
                    .imageScale(.large)
                HStack {
                    Divider()
                }
            }
            VStack(alignment: .trailing,spacing: 4) {
                HStack(){
                    Text("Guacamole")
                    Spacer()
                    Image("icon-guacamole")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack(){
                    Text("Sandwich")
                    Spacer()
                    Image("icon-sandwiches")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack(){
                    Text("Soup")
                    Spacer()
                    Image("icon-soup")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack(){
                    Text("Smoothie")
                    Spacer()
                    Image("icon-smoothies")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
            }
        }
        .font(.system(.callout,design: .serif))
        .foregroundColor(Color.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}
struct IconModifier:ViewModifier{
    func body(content:Content)->some View{
        content.frame(width: 42,height: 42,alignment: .center)
    }
}
#Preview {
    DishesView()
        .previewLayout(.fixed(width: 414, height: 280))
}
