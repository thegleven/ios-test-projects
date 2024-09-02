//
//  BusinessSection.swift
//  City Sights
//
//  Created on 02/07/2024.
//

import SwiftUI

struct BusinessSection: View {
    
    var title: String
    var businesses: [Business]
    
    var body: some View {
        
        Section (header: BusinessSectionHeader(title: title)) {
            ForEach(businesses) { business in
                
                NavigationLink(destination: BusinessDetail(business: business)) {
                    BusinessRow(business: business)
                }
            }
        }
    }
}
