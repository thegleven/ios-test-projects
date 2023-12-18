//
//  ContentView.swift
//  NumberClimbGame
//
//  Created by theshamuel on 04/12/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var b: Int = 0
    @State var flag: Bool = true
    
    var body: some View {
       
        VStack {
            
            Text(String(b))
                .font(.largeTitle)
            
            Button {
                Task {
                    changeNum()
                }
                
            } label: {
                Text("Tap me")
            }
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
        .padding()
    }
    
    func changeNum() {
        
        if (b > 50) {
            flag = false
        } else if (b < 0) {
            flag = true
        }

        if (flag) {
            b = b + Int.random(in: 0...10)
        } else {
            b = b - Int.random(in: 0...10)
        }
    }
}

#Preview {
    ContentView()
}
