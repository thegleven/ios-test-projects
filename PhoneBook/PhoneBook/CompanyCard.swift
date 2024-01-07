//
//  CompanyCard.swift
//  PhoneBook
//
//  Created by thegleven
//

import SwiftUI

struct CompanyCard: View {
    
    var company: Company
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .background(content: {
                    Image(company.company_image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                })
                .foregroundColor(.clear)
                .cornerRadius(15)
            
            VStack {
                
                HStack {
                    Text(company.company_name)
                        .font(.largeTitle)
                        .bold()
                    
                    Spacer()
                }
                Spacer()
            }
            .padding()
            .foregroundColor(.black)
        }
        .frame(height: 400)
    }
}

#Preview {
    CompanyCard(company: Company(company_name: "ABC Corporation",
                                 company_image: "company1",
                                          departments: [
                                              Department(department_name: "HR",
                                                          employees: [
                                                              Employee(name: "John Smith",
                                                                       position: "HR Manager",
                                                                       email: "john.smith@abccorp.com",
                                                                       phone: "+1 (123) 456-7890")])]))
}
