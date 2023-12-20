//
//  MovieItem.swift
//  Movie
//
//  Created by thegleven on 30/11/2023.
//

import Foundation

struct MovieItem: Identifiable {
    
    var id: UUID = UUID()
    var name: String
    var directorName: String
    var description: String
    var yearRelease: String
    var rating: Int
    var indicateWatch: Bool
    
}
