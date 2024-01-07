//
//  Employee.swift
//  PhoneBook
//
//  Created by thegleven
//

import Foundation

struct Employee: Identifiable, Decodable {
    
    let id = UUID()
    var name: String
    var position: String
    var email: String
    var phone: String
    
}
