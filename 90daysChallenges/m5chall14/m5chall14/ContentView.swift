//
//  ContentView.swift
//  m5chall14
//
//  Created on 10/06/2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model: Model
    
    var body: some View {
        
        VStack {
            
            Text(model.fact)
                .font(.title)
                .bold()
                .padding()
            
            Button("Get a new fact!") {
                
                model.getFact()
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView(model: Model())
}
