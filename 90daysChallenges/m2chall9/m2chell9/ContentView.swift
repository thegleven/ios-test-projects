//
//  ContentView.swift
//  m2chell9
//
//  Created by theshamuel on 11/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var fruits:[String]?
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Button("Clear") {
                    fruits = nil
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(25)
                Spacer()
                Button("Add") {
                    fruits = ["banana", "kiwi", "apple", "grapes"]
                }
                .padding()
                .background(.green)
                .foregroundColor(.white)
                .cornerRadius(20)
                Spacer()
            }
            Spacer()
            if fruits == nil {
                Text("Add strings to the array")
            } else {
                List (fruits!, id:\.self ) { fruit in
                    Text(fruit)
                }
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
