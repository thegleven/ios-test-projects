//
//  Department.swift
//  PhoneBook
//
//  Created by thegleven
//

import Foundation

struct Department: Identifiable, Decodable {
    
    let id = UUID()
    var department_name: String
    var employees: [Employee]
}
