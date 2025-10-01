//
//  ContentView.swift
//  LiquidGlassDemo
//
//  Created by Harshali Chaudhari on 01/10/25.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                // Background Layer
                LinearGradient(
                    gradient: Gradient(colors: [.purple, .blue, .pink]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                
                // Foreground Content
                ScrollView {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 16)]) {
                        ForEach(1...12, id: \.self) { index in
                            GlassCardView(title: "Card \(index)")
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("Liquid Glass Demo")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button(action: {}) {
                        Image(systemName: "gear")
                    }
                    .glassEffect() // highlight new feature
                    .clipShape(Circle())
                }
            }
        }
        .toolbarBackground(.ultraThinMaterial, for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
    }
}

#Preview {
    ContentView()
}
