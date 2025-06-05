//
//  SlideIn.swift
//  SwiftUI Animations
//
//  Created by Chaudhry Umair on 05/06/2025.
//

import SwiftUI

// MARK: - SlideIn
public struct SlideIn: View {
    @State private var offsetX: CGFloat = -300

    public init() {}

    public var body: some View {
        Text("Slide In")
            .padding()
            .background(Color.orange)
            .cornerRadius(10)
            .offset(x: offsetX)
            .onAppear {
                withAnimation(.easeOut(duration: 1)) {
                    offsetX = 0
                }
            }
    }
}
