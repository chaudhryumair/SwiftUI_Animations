//
//  BounceButton.swift
//  SwiftUI Animations
//
//  Created by Chaudhry Umair on 05/06/2025.
//


import SwiftUI

// MARK: - BounceButton
public struct BounceButton: View {
    @State private var pressed = false

    public init() {}

    public var body: some View {
        Button("Bounce") {
            withAnimation(.interpolatingSpring(stiffness: 100, damping: 5)) {
                pressed.toggle()
            }
        }
        .scaleEffect(pressed ? 1.2 : 1.0)
        .padding()
        .background(Color.purple)
        .foregroundColor(.white)
        .cornerRadius(10)
    }
}
