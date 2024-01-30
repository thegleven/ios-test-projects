//
//  ContentView.swift
//  m2chel4
//
//  Created by thegleven on 05/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    var fruits = ["banana", "kiwi", "pear", "apple"]
    @State var numeric = [Int]()
    
    var body: some View {
        
        VStack {
            HStack {
                Spacer()
                Button {
                    addNumSeven()
                } label: {
                    Image(systemName: "star.fill")
                }
                Spacer()
                Button {
                    more()
                } label: {
                    Image(systemName: "restart")
                }
                Spacer()
                Button {
                    numeric.removeAll()
                } label: {
                    Image(systemName: "circlebadge.fill")
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(15)
                Spacer()
            }
            .font(.largeTitle)

            List(numeric, id:\.self) {item in
                Text(String(item))
           }
        }
        .padding()
    }
    
    func addNumSeven() {
        var num = 0
        
        repeat {
            num = Int.random(in: 0...10)
            numeric.append(num)}
        while num != 7
    }
    
    func more() {
        if numeric.count == 0 {
            return
        }
        for item in 0...numeric.count-1 {
            numeric[item] = numeric[item]+1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
