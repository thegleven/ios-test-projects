//
//  Book.swift
//  MyLibrary
//
//  Created on 25/04/2024.
//

import Foundation

struct Book: Identifiable, Decodable {
    
    var id: Int
    var title: String
    var author: String
    var isFavourite: Bool
    var currentPage: Int
    var rating: Int
    var content: [String]
    
}

