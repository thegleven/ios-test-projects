//
//  RecipeFeaturedView.swift
//  RecipeList
//
//  Created by theshamuel on 28/03/2024.
//

import SwiftUI

struct RecipeFeaturedView: View {
    
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {
        Text(model.recipes[1].name)
    }
}

#Preview {
    RecipeFeaturedView().environmentObject(RecipeModel())
}
