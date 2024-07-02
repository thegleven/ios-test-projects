//
//  BusinessSearch.swift
//  City Sights
//
//  Created on 02/07/2024.
//

import Foundation

struct BusinessSearch: Decodable {
    
    var businesses = [Business]()
    var total = 0
    var region = Region()
}

struct Region: Decodable {
    var center = Coordinate()
}
