//
//  RecipeModel.swift
//  RecipeList
//
//  Created on 21/03/2024.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        // Create an instance of data service and get the data
        self.recipes = DataService.getLocalData()
    }
    
    static func getPortion(ingredient:Ingredients, recipeServings:Int, targetServings:Int) -> String {
        
        
        return String(targetServings)
    }
}
