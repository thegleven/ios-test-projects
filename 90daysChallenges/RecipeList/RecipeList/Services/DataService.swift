//
//  DataService.swift
//  RecipeList
//
//  Created on 21/03/2024.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Recipe] {
        
        // Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        // Check if pathString is not nil
        guard pathString != nil else {
            return [Recipe]()
        }
        
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            // Create a data object
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            do {
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                // Add the unique IDs
                for item in recipeData {
                  
                    item.id = UUID()
                    
                    for ing in item.ingredients {
                        
                        ing.id = UUID()
                    }
                }
                
                // Return the recipes
                return recipeData
            }
            catch {
                // error with parsing json
                print(error)
            }
        }
        catch {
            // error with getting data
            print(error)
        }
        
        return [Recipe]()
    }
    
}
