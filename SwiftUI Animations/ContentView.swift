//
//  ContentView.swift
//  SwiftUI Animations
//
//  Created by Chaudhry Umair on 05/06/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
                   PulseEffect()
                   FadeInOut()
                   ScaleOnTap()
                   SlideIn()
                   BounceButton()
                   CardFlip()
                   TypingDots()
                   ProgressRing()
                   ShimmerEffect()
               }
               .padding()
    }
}

#Preview {
    ContentView()
}
