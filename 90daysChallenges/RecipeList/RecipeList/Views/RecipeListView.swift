//
//  ContentView.swift
//  RecipeList
//
//  Created on 21/03/2024.
//

import SwiftUI

struct RecipeListView: View {
    
    @EnvironmentObject var model: RecipeModel
    
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .leading) {
                
                Text("All Recipes")
                    .padding(.top, 40)
                    .font(.largeTitle.bold())
                
                ScrollView {
                    LazyVStack(alignment: .leading) {
                        ForEach(model.recipes) { item in
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
                                            .foregroundColor(.black)
                                    }
                                })
                        }
                    }
                }
            }
            .navigationBarHidden(true)
            .padding(.leading)
        }
    }
}

#Preview {
    RecipeListView().environmentObject(RecipeModel())
}
