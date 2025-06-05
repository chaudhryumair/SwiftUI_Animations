//
//  CardFlip 2.swift
//  SwiftUI Animations
//
//  Created by Chaudhry Umair on 05/06/2025.
//

import SwiftUI

public struct CardFlip: View {
    @State private var flipped = false

    public init() {}

    public var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(flipped ? Color.green : Color.orange)
                .frame(width: 200, height: 300)
                .overlay(
                    Text(flipped ? "Back" : "Front")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                )
        }
        .rotation3DEffect(
            .degrees(flipped ? 180 : 0),
            axis: (x: 0, y: 1, z: 0)
        )
        .onTapGesture {
            withAnimation(.easeInOut(duration: 0.6)) {
                flipped.toggle()
            }
        }
    }
}
