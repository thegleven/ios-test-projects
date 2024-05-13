//
//  ContentView.swift
//  MyLearning
//
//  Created on 13/05/2024.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        ScrollView {
            
            LazyVStack {
                
                //confirm that currenModule is set
                
                if model.currentModule != nil {
                    
                    ForEach(0..<model.currentModule!.content.lessons.count) { index in
                        
                        ContentViewRow(index: index)
                        
                    }
                    
                }
            }
            .padding()
            .navigationTitle("Learn \(model.currentModule?.category ?? "") ")
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(ContentModel())
}
