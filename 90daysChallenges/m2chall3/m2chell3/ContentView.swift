//
//  ContentView.swift
//  m2chell3
//
//  Created by thegleven on 03/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    var fruits = ["banana", "apple", "kiwi", "grapes", "pear" ]
    @State var stack = [String]()
    
    var body: some View {
        VStack {
            Button {
                addFruit()
            } label: {
                Image(systemName: "plus.app")
            }
            Spacer()

            List(stack, id: \.self) {item in
                Text(item)
                
            }
        }
        .padding()
    }
    func addFruit() {
        let fruitNumber = Int.random(in: 0...fruits.count-1)
        stack.append(fruits[fruitNumber])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
