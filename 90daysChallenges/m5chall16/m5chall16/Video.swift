//
//  Video.swift
//  m5chall16
//
//  Created by theshamuel on 11/06/2024.
//

import Foundation

struct Video: Decodable, Identifiable {
    
    var id: Int
    var title: String
    var url: String
}
