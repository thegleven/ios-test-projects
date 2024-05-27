//
//  RectangleCard.swift
//  MyLearning
//
//  Created on 27/05/2024.
//

import SwiftUI

struct RectangleCard: View {
    
    var color = Color.white
    
    var body: some View {
        
        Rectangle()
            .foregroundColor(color)
            .cornerRadius(10)
            .shadow(radius: 5)
    }
}

#Preview {
    RectangleCard()
}
