//
//  PulseEffect.swift
//  SwiftUI Animations
//
//  Created by Chaudhry Umair on 05/06/2025.
//

import SwiftUI

public struct PulseEffect: View {
    @State private var animate = false

    public init() {}

    public var body: some View {
        Circle()
            .fill(Color.blue)
            .frame(width: 100, height: 100)
            .scaleEffect(animate ? 1.2 : 1.0)
            .opacity(animate ? 0.5 : 1.0)
            .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true), value: animate)
            .onAppear {
                animate = true
            }
    }
}
