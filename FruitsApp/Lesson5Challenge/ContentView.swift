//
//  ContentView.swift
//  Lesson5Challenge
//
//  Created by theshamuel on 27/11/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var fruits:[FruitsItem] = []
    
    var a:[String] = ["Apple", "Pear", "Kiwi", "Lemon", "Banana"]
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Button {
                        Task {
                             addFruit()
                        }
                    } label: {
                        Image(systemName: "plus.app")
                            .resizable()
                            .frame(width: 30.0, height: 30.0)
                            .foregroundColor(.black)
                    }
                    Spacer()
                }
                
                Spacer ()
    
                List(fruits) { fruit in
                    Text(fruit.name)
                    
                }
                
            }
            .padding()
        }
        

    }
    func addFruit() {
        fruits.insert(FruitsItem(name: a[Int.random(in: 0...4)]), at:0)
        }
}

#Preview {
    ContentView()
}
