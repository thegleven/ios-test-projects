//
//  BusinessList.swift
//  City Sights
//
//  Created by theshamuel on 02/07/2024.
//

import SwiftUI

struct BusinessList: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        ScrollView {
            LazyVStack (alignment: .leading, pinnedViews:[.sectionHeaders] ) {
                
                BusinessSection(title: "Restaurants", businesses: model.restaurants)
                
                BusinessSection(title: "Sights", businesses: model.sights)
            }
        }
    }
}

#Preview {
    BusinessList()
}
