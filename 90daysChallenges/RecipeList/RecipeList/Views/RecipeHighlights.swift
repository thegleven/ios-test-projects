//
//  RecipeHighlights.swift
//  RecipeList
//
//  Created by theshamuel on 16/04/2024.
//

import SwiftUI

struct RecipeHighlights: View {
    
    var allHighlights = ""
    
    init(highlights:[String]) {
        
        for index in 0..<highlights.count {
            
            if index == highlights.count - 1 {
                allHighlights += highlights[index]
            }
            else {
                allHighlights += highlights[index] + ", "
            }
        }
    }
    var body: some View {
        Text(allHighlights)
    }
}

#Preview {
    RecipeHighlights(highlights: ["test", "test2", "test3"])
}
