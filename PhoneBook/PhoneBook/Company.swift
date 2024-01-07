//
//  Company.swift
//  PhoneBook
//
//  Created by thegleven
//

import Foundation

struct Company: Identifiable, Decodable {
    
    let id = UUID()
    var company_name: String
    var company_image: String
    var departments: [Department]
}

