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
        
        var portion = ""
        var numerator = ingredient.num ?? 1
        var denominator = ingredient.denom ?? 1
        var wholePortions = 0
        
        if ingredient.num != nil {
            
            denominator = denominator * recipeServings
            numerator = numerator * targetServings
            
            let divisor = Rational.greatestCommonDivisor(numerator, denominator)
            numerator = numerator / divisor
            denominator = denominator / divisor
            
            if numerator >= denominator {
                wholePortions = numerator / denominator
                numerator = numerator % denominator
                portion = portion + String(wholePortions)
                
            }
            
            if numerator > 0 {
                
                portion += wholePortions > 0 ? " " : ""
                portion = portion + "\(numerator)/\(denominator)"
            }
        }
        
        if var unit = ingredient.unit {
            
            if wholePortions > 1 {
                
                if unit.suffix(2) == "ch" {
                    unit += "es"
                }
                else if unit.suffix(1) == "f" {
                    unit = String(unit.dropLast())
                    unit += "ves"
                }
                else {
                    unit += "s"
                }
            }
            
            portion += ingredient.num == nil && ingredient.denom == nil ? "" : " "
            return portion + unit
        }

        return portion
    }
}
