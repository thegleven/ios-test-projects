//
//  ContentView.swift
//  m4chall8
//
//  Created on 10/04/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ScrollView {
            LazyVStack(alignment: .leading) {
                ForEach(1..<70) { item in
                    
                    Rectangle()
                        .fill(RadialGradient(
                            gradient: Gradient(colors: [.yellow, .green]),
                            center: UnitPoint(x: 0.5, y: 0.5),
                            startRadius: 0,
                            endRadius: 200))
                        .frame(height: pow(1.1, CGFloat(item)))
                }
            }
            .padding()
        }
        
        
    }
}

#Preview {
    ContentView()
}
