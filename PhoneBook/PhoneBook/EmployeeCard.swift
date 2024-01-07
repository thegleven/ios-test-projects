//
//  EmployeeCard.swift
//  PhoneBook
//
//  Created by thegleven
//

import SwiftUI

struct EmployeeCard: View {
    
    var employee: Employee
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .foregroundColor(.blue)
                .opacity(0.5)
                .cornerRadius(15)
            
            VStack {
                HStack {
                    Text(employee.name)
                        .font(.title)
                        .bold()
                    
                    Spacer()
                }
                Spacer()
            }
            .padding()
            .foregroundColor(.black)
        }
        .frame(height: 50)
    }
}

#Preview {
    EmployeeCard(employee: Employee(name: "John Smith",
                                    position: "HR Manager",
                                    email: "john.smith@abccorp.com",
                                    phone: "+1 (123) 456-7890"))
}
