//
//  BusinessSection.swift
//  City Sights
//
//  Created by theshamuel on 02/07/2024.
//

import SwiftUI

struct BusinessSection: View {
    
    var title: String
    var businesses: [Business]
    
    var body: some View {
        
        Section (header: BusinessSectionHeader(title: title)) {
            ForEach(businesses) { business in
                
                BusinessRow(business: business)
            }
        }
    }
}
