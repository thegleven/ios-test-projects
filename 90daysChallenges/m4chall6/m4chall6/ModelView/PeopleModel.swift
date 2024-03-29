//
//  PeopleModel.swift
//  m4chall6
//
//  Created on 28/03/2024.
//

import Foundation

class PeopleModel: ObservableObject {
    
    @Published var showName = true
    @Published var showAddress = true
    @Published var showCompany = true
    @Published var showYearExp = true
    
    var people = [
        People(name: "Inigo Montoya", address: "555 Youkilledmyfather Street", company: "CodeWithChris", yearExp: 35),
        People(name: "Edna Mode", address: "123 Nocape Lane", company: "CodeWithChris", yearExp: 10),
        People(name: "Travis Bickle", address: "99 Youtalkingtome Road", company: "CodeWithChris", yearExp: 3),
        People(name: "Walter Sobchak", address: "8 Dude Place", company: "CodeWithChris", yearExp: 23),
        People(name: "Julius Winnfield", address: "25 Ezekiel Ave", company: "CodeWithChris", yearExp: 17)
        ]
}


