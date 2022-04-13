//
//  ContentView.swift
//  Shared
//
//  Created by Thiago on 12/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(spacing: 30) {
            VStack(spacing: 5) {
                SmallRectangleView(type: .xcode)
                SmallRectangleView(type: .brave)
                SmallRectangleView(type: .discord)
                SmallRectangleView(type: .terminal)
            }
            VStack {
                UsageRectangleView(type: .cpu)
                UsageRectangleView(type: .memory)
            }
            VStack {
                UsageRectangleView(type: .cpu)
                UsageRectangleView(type: .memory)
            }
            VStack {
                SmallRectangleView(type: .copy)
                SmallRectangleView(type: .light)
                SmallRectangleView(type: .mail)
                SmallRectangleView(type: .notes)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.device)
            .previewDevice("iPhone 11")
            .previewInterfaceOrientation(.landscapeRight)
    }
}
