//
//  SettingsView.swift
//  LiquidGlassDemo
//
//  Created by Harshali Chaudhari on 01/10/25.
//
import SwiftUI

struct SettingsView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        ZStack {
            // Gradient background same as Home
            LinearGradient(
                gradient: Gradient(colors: [.purple, .blue, .pink]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack {
                // MARK: - Top TabView (Segmented)
                Picker("Settings Tab", selection: $selectedTab) {
                    Text("Appearance").tag(0)
                    Text("Account").tag(1)
                }
                .pickerStyle(.segmented)
                .padding()
                .background(.ultraThinMaterial) // glass effect for picker
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding(.horizontal)
                
                // MARK: - Tab Content
                if selectedTab == 0 {
                    List {
                        Toggle("Enable Dark Mode", isOn: .constant(true))
                    }
                    .listStyle(.insetGrouped)
                    .scrollContentBackground(.hidden)
                    .background(Color.clear)
                } else {
                    List {
                        Text("User Profile")
                        Text("Change Password")
                    }
                    .listStyle(.insetGrouped)
                    .scrollContentBackground(.hidden)
                    .background(Color.clear)
                }
                
                Spacer()
            }
        }
        .navigationTitle("Settings")
    }
}

#Preview {
    SettingsView()
}
