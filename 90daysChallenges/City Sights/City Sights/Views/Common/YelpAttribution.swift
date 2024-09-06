//
//  YelpAttribution.swift
//  City Sights
//
//  Created on 06/09/2024.
//

import SwiftUI

struct YelpAttribution: View {
    
    var link: String
    
    var body: some View {
        
        Link(destination: URL(string: link)!) {
            
            Image("yelp")
                .resizable()
                .scaledToFit()
                .frame(height: 36)
        }
    }
}

#Preview {
    YelpAttribution(link: "https://yelp.ca")
}
