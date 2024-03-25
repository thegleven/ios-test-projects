//
//  ContentView.swift
//  m4chall3
//
//  Created by theshamuel on 25/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var indexTab = 0
    
    var body: some View {
        
        TabView(selection: $indexTab) {
            
            Text("This tab’s tag is \(indexTab)")
                .tabItem {
                    VStack {
                        Image(systemName: "tortoise")
                        Text("Tab 1")
                    }
                }
                .tag(0)
            
            Button("Take me to tab 3!") {
                indexTab = 2
            }
                .tabItem {
                    VStack {
                        Image(systemName: "arrowshape.right")
                        Text("Tab 2")
                    }
                }
                .tag(1)
            
            List {
                ForEach(0..<10) { _ in
                    Text("This is tab 3!")
                }
            }
                .tabItem {
                    VStack {
                        Image(systemName: "hands.clap")
                        Text("Tab 3")
                    }
                }
                .tag(2)
        }
    }
}

#Preview {
    ContentView()
}
