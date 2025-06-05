//
//  ShimmerEffect.swift
//  SwiftUI Animations
//
//  Created by Chaudhry Umair on 05/06/2025.
//


import SwiftUI

// MARK: - ShimmerEffect
public struct ShimmerEffect: View {
    @State private var move = false

    public init() {}

    public var body: some View {
        Text("Loading...")
            .padding()
            .background(Color.gray.opacity(0.3))
            .cornerRadius(8)
            .overlay(
                Rectangle()
                    .fill(LinearGradient(
                        gradient: Gradient(colors: [.clear, .white.opacity(0.6), .clear]),
                        startPoint: .leading,
                        endPoint: .trailing))
                    .rotationEffect(.degrees(30))
                    .offset(x: move ? 200 : -200)
            )
            .mask(Text("Loading...").padding())
            .onAppear {
                withAnimation(Animation.linear(duration: 1.5).repeatForever(autoreverses: false)) {
                    move = true
                }
            }
    }
}
