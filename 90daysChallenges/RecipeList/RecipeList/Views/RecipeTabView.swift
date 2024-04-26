//
//  RecipeTabView.swift
//  RecipeList
//
//  Created on 24/03/2024.
//

import SwiftUI

struct RecipeTabView: View {
    
    var body: some View {
        
        TabView {
            
            RecipeFeaturedView()
                .tabItem {
                    VStack {
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
            RecipeListView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
        }
        .environmentObject(RecipeModel())
    }
}

#Preview {
    RecipeTabView()
}
