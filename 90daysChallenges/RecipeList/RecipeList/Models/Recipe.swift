//
//  Recipe.swift
//  RecipeList
//
//  Created on 21/03/2024.
//

import Foundation

class Recipe: Identifiable, Decodable {
    
    var id: UUID?
    var name: String
    var featured: Bool
    var image: String
    var description: String
    var prepTime: String
    var cookTime: String
    var totalTime: String
    var servings: Int
    var highlights: [String]
    var ingredients: [Ingredients]
    var directions: [String]
    
    init(id: UUID? = nil, name: String, featured: Bool, image: String, description: String, prepTime: String, cookTime: String, totalTime: String, servings: Int, highlights: [String], ingredients: [Ingredients], directions: [String]) {
        self.id = id
        self.name = name
        self.featured = featured
        self.image = image
        self.description = description
        self.prepTime = prepTime
        self.cookTime = cookTime
        self.totalTime = totalTime
        self.servings = servings
        self.highlights = highlights
        self.ingredients = ingredients
        self.directions = directions
    }

    
}

class Ingredients: Identifiable, Decodable {
    
    var id: UUID?
    var name: String
    var num: Int?
    var denom: Int?
    var unit: String?
    
    init(id: UUID? = nil, name: String, num: Int? = nil, denom: Int? = nil, unit: String? = nil) {
        self.id = id
        self.name = name
        self.num = num
        self.denom = denom
        self.unit = unit
    }
    
}
