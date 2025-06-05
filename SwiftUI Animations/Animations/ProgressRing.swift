//
//  ProgressRing.swift
//  SwiftUI Animations
//
//  Created by Chaudhry Umair on 05/06/2025.
//

import SwiftUI

// MARK: - ProgressRing
public struct ProgressRing: View {
    @State private var progress: CGFloat = 0.7

    public init() {}

    public var body: some View {
        ZStack {
            Circle()
                .stroke(Color.gray.opacity(0.2), lineWidth: 10)
            Circle()
                .trim(from: 0.0, to: progress)
                .stroke(Color.blue, lineWidth: 10)
                .rotationEffect(.degrees(-90))
                .animation(.easeOut(duration: 1), value: progress)
        }
        .frame(width: 100, height: 100)
    }
}
