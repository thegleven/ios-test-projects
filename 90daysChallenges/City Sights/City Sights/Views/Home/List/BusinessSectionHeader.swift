//
//  BusinessSectionHeader.swift
//  City Sights
//
//  Created on 02/07/2024.
//

import SwiftUI

struct BusinessSectionHeader: View {
    
    var title: String
    
    var body: some View {
        
        ZStack (alignment: .leading) {
        
            Rectangle()
                .foregroundColor(.white)
                .frame(height: 45)
            
            Text(title)
                .font(.headline)
        }
    }
}

#Preview {
    BusinessSectionHeader(title: "Restaurants")
}
