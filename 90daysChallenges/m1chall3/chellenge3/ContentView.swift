//
//  ContentView.swift
//  chellenge3
//
//  Created by theshamuel on 22/02/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            
//            Text("Hello, world!")
//            .padding()
//            .background(Color.green)
//            .cornerRadius(15)
//            .foregroundColor(.white)
//            .padding()
//            .background(Color.blue)
//            .cornerRadius(15)
           
        VStack {
            ZStack {
                Image("toronto")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                
                VStack (alignment: .center) {
                    Text("CN Tower")
                        .font(.largeTitle)
                        .padding([.top, .leading, .trailing])
                    Text("Toronto")
                        .font(.caption)
                        .padding([.leading, .bottom, .trailing])
                }
                .background(Color.black)
                .opacity(0.8)
                .cornerRadius(10)
                .foregroundColor(.white)
            }
            .padding()

            ZStack {
                Image("london")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                
                VStack (alignment: .center) {
                    Text("Big Ben")
                        .font(.largeTitle)
                        .padding([.top, .leading, .trailing])
                    Text("London")
                        .font(.caption)
                        .padding([.leading, .bottom, .trailing])
                }
                .background(Color.black)
                .opacity(0.8)
                .cornerRadius(10)
                .foregroundColor(.white)
            }
            .padding()
        } 
    }
}

#Preview {
    ContentView()
}
