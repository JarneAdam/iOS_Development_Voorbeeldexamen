//
//  ContentView.swift
//  Voorbeeldexamen
//
//  Created by Jarne Adam on 17/12/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house"){
                HomeView()
            }
            Tab("Favourites", systemImage: "heart.fill"){
                FavoritesView()
            }
            Tab("Settings", systemImage: "gear"){
                SettingsView()
            }
        }
    }
}
