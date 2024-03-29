//
//  PeopleDetailView.swift
//  m4chall6
//
//  Created on 29/03/2024.
//

import SwiftUI

struct PeopleDetailView: View {
    
    @EnvironmentObject var model: PeopleModel
    
    var person: People
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            if model.showName == true {
                Text("Name: \(person.name)")
            }
            if model.showAddress == true {
                Text("Adress: \(person.address)")
            }
            if model.showCompany == true {
                Text("Company: \(person.company)")
            }
            if model.showYearExp == true {
                Text("Years of Experience: \(person.yearExp)")
            }
        }

    }
}

#Preview {
    PeopleDetailView(person: People(name: "Inigo Montoya",
                                    address: "555 Youkilledmyfather Street",
                                    company: "CodeWithChris",
                                    yearExp: 35)).environmentObject(PeopleModel())
}
