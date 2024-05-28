//
//  ContentView.swift
//  m5chall8
//
//  Created on 28/05/2024.
//

import SwiftUI

let count = 10

struct ContentView: View {
    
    @State private var viewIndex = 1
    @State private var viewSelection: Int?
    
    var body: some View {
        
        NavigationView {
            
            VStack(spacing: 20) {
                
                Picker("View Selection", selection: $viewIndex) {
                    
                    ForEach(0..<count) { c in
                        
                        Text("\(c)")
                    }
                }
                .pickerStyle(.wheel)
                
                Button(action: {
                    
                    viewSelection = viewIndex
                    
                }, label: {
                    
                    Text("Go to view \(viewIndex)")
                })
                
                ForEach(0..<count) { c in
                    
                    NavigationLink(
                        destination: ChildView(selectedView: $viewSelection),
                        tag: c,
                        selection: $viewSelection,
                        label: {})
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    ContentView()
}
