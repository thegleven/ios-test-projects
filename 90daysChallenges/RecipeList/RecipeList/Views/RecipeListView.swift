//
//  ContentView.swift
//  RecipeList
//
//  Created on 21/03/2024.
//

import SwiftUI

struct RecipeListView: View {
    
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        
        NavigationView {
            List(model.recipes) { item in
                
                NavigationLink(
                    destination: RecipeDetailView(recipe: item),
                    
                    label: {
                        
                        HStack(spacing: 20.0) {
                            Image(item.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50, alignment: .center)
                                .clipped()
                                .cornerRadius(5)
                            Text(item.name)
                        }
                    })
            }
            .navigationBarTitle("All Recipes")
        }
    }
}

#Preview {
    RecipeListView()
}
