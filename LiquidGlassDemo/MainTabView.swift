//
//  MainTabView.swift
//  LiquidGlassDemo
//
//  Created by Harshali Chaudhari on 01/10/25.
//
import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            
            StatsView()
                .tabItem {
                    Label("Stats", systemImage: "chart.bar.fill")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape.fill")
                }
        }
        .tabBarMinimizeBehavior(.onScrollDown) // new iOS 26 feature
    }
}

#Preview {
    MainTabView()
}
