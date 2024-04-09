//
//  ContentView.swift
//  m4chall7
//
//  Created on 09/04/2024.
//

import SwiftUI

struct ContentView: View {
    
    var cardColor = Color (
            .sRGB,
            red: Double.random(in: 0..<1),
            green: Double.random(in: 0..<1),
            blue: Double.random(in: 0..<1),
            opacity: 1
        )
    
    var body: some View {
        
        GeometryReader { geo in
        TabView {
            
            ForEach (1..<50) { item in
                
                
                
                    ZStack {
                        
                        Rectangle()
                            .foregroundColor(cardColor)
                            .cornerRadius(20)
                            .shadow(radius: 10)
                        
                        Image(systemName: "\(item).circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
                    }
                    .frame(width: geo.size.width - 40, height: geo.size.height - 100, alignment: .center)
                }
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
    }

#Preview {
    ContentView()
}
