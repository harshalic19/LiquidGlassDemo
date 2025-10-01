//
//  GlassCardView.swift
//  LiquidGlassDemo
//
//  Created by Harshali Chaudhari on 01/10/25.
//
import SwiftUI

struct GlassCardView: View {
    let title: String

    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "sparkles")
                .font(.largeTitle)
                .padding(.bottom, 8)
            Text(title)
                .font(.headline)
                .padding(.bottom, 12)
        }
        .frame(height: 160)
        .frame(maxWidth: .infinity)
        .glassEffect() // new SwiftUI 2025 modifier
        .cornerRadius(10)
    }
}


#Preview {
    GlassCardView(title: "Card 1")
}
