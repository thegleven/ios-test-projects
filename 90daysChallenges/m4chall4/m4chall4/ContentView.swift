//
//  ContentView.swift
//  m4chall4
//
//  Created on 26/03/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(spacing: 0) {
            
            GeometryReader { geo in
                Rectangle()
                    .foregroundColor(.green)
                    .onTapGesture {
                        print("Width: \(geo.size.width), Height: \(geo.size.height)")
                    }
                    
                Rectangle()
                    .frame(width: geo.size.width*2/3, height: geo.size.height/4)
                    .foregroundColor(.red)
                    .padding(.leading, geo.size.width/6)
                    .padding(.top, geo.size.height*3/8)
                    .onTapGesture {
                        print("Width: \(geo.size.width*2/3), Height: \(geo.size.height/4)")
                    }
                
            }
            
            GeometryReader { geo in
                Rectangle()
                    .foregroundColor(.purple)
                    .frame(width: geo.size.width/2, height: geo.size.height, alignment: .center)
                    .onTapGesture {
                        print("Width: \(geo.size.width/2), Height: \(geo.size.height)")
                    }
                
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(width: geo.size.width/2, height: geo.size.height, alignment: .center)
                    .padding(.leading, geo.size.width / 2)
                    .onTapGesture {
                        print("Width: \(geo.size.width/2), Height: \(geo.size.height)")
                    }
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
