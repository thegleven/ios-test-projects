//
//  Member.swift
//  m2chall16
//
//  Created  15/03/2024.
//

import Foundation

struct Member: Identifiable, Decodable {
    
    var id: UUID?
    var name: String
    var image: String
    var quoteTitle: String
    var quotes: [String]
}
