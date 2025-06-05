//
//  TypingDots.swift
//  SwiftUI Animations
//
//  Created by Chaudhry Umair on 05/06/2025.
//

import SwiftUI


// MARK: - TypingDots
public struct TypingDots: View {
    @State private var scale: [CGFloat] = [1, 1, 1]

    public init() {}

    public var body: some View {
        HStack(spacing: 8) {
            ForEach(0..<3, id: \..self) { index in
                Circle()
                    .frame(width: 10, height: 10)
                    .scaleEffect(scale[index])
                    .animation(Animation.easeInOut(duration: 0.6).repeatForever().delay(Double(index) * 0.2), value: scale[index])
            }
        }
        .onAppear {
            for i in 0..<3 {
                scale[i] = 1.5
            }
        }
    }
}
