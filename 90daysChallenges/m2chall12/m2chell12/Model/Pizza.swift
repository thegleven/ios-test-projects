//
//  Pizza.swift
//  m2chell12
//
//  Created by theshamuel on 13/03/2024.
//

import Foundation

struct Pizza: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var toppings:[String]
    var image:String
}
