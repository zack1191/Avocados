    //
    //  AppView.swift
    //  AVOCADOS
    //
    //  Created by Hein Htet Aung on 2024/06/24.
    //

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
            AvocadosView().tabItem { Image("tabicon-branch")
                Text("Avocados")}
            ContentView(headers: headersData,facts: factsData)
                .tabItem { Image("tabicon-book")
                Text("Recipes")}
            RipeningStagesView()
                .tabItem { Image("tabicon-avocado")
                Text("Ripening")}
            SettingsView().tabItem { Image("tabicon-settings")
            Text("Settings")}
        }
        .edgesIgnoringSafeArea(.top)
        .accentColor(Color.primary
        )
    }
}

#Preview {
    AppView()
}
