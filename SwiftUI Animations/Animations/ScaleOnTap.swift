//
//  ScaleOnTap.swift
//  SwiftUI Animations
//
//  Created by Chaudhry Umair on 05/06/2025.
//


import SwiftUI

// MARK: - ScaleOnTap
public struct ScaleOnTap: View {
    @State private var scale: CGFloat = 1.0

    public init() {}

    public var body: some View {
        Text("Tap Me")
            .padding()
            .background(Color.green)
            .cornerRadius(10)
            .scaleEffect(scale)
            .onTapGesture {
                withAnimation(.spring()) {
                    scale = scale == 1.0 ? 1.3 : 1.0
                }
            }
    }
}
