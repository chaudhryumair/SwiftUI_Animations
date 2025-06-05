//
//  FadeInOut.swift
//  SwiftUI Animations
//
//  Created by Chaudhry Umair on 05/06/2025.
//

import SwiftUI

// MARK: - FadeInOut
public struct FadeInOut: View {
    @State private var visible = false

    public init() {}

    public var body: some View {
        Text("Hello")
            .opacity(visible ? 1 : 0)
            .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true), value: visible)
            .onAppear {
                visible = true
            }
    }
}
