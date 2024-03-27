//
//  RecipeDetailView.swift
//  RecipeList
//
//  Created on 21/03/2024.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe: Recipe
    
    var body: some View {
        
        ScrollView {
            
            VStack (alignment: .leading) {
                
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                
                // MARK: Ingredients
                VStack(alignment: .leading) {
                    Text("Ingredients")
                        .font(.headline)
                        .padding([.bottom, .top], 5)
                    
                    ForEach (recipe.ingredients) { item in
                        Text("• " + item.name)
                    }
                }
                .padding(.horizontal)
                
                // MARK: Divider
                Divider()
                
                // MARK: Directions
                VStack(alignment: .leading) {
                    Text("Directions")
                        .font(.headline)
                        .padding([.bottom, .top], 5)
                    
                    ForEach(0..<recipe.directions.count, id: \.self) { index in
                        
                        Text(String(index+1) + ". " + recipe.directions[index])
                            .padding(.bottom, 5)
                    }
                }
                .padding(.horizontal)
            }
            
        }
        .navigationBarTitle(recipe.name)
    }
}

#Preview {
    RecipeDetailView(recipe: Recipe(name: "Eggplant Parmesan",
                                    featured: false,
                                    image: "eggplant parmesan",
                                    description: "Baked eggplant with bread crumbs and lots of cheese. Delicious!",
                                    prepTime: "25 minutes",
                                    cookTime: "35 minutes",
                                    totalTime: "1 hour",
                                    servings: 10,
                                    highlights: ["Vegetarian", "Healthy", "Easy clean-up"],
                                    ingredients:[],
                                    directions: ["Preheat oven to 350 degrees F (175 degrees C).",
                                                                            "Dip eggplant slices in egg, then in bread crumbs. Place in a single layer on a baking sheet. Bake in preheated oven for 5 minutes on each side."]))
}
