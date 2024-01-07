//
//  DepartmentCard.swift
//  PhoneBook
//
//  Created by thegleven
//

import SwiftUI

struct DepartmentCard: View {
    
    var department: Department
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .background(content: {
                    Image("bgDepart")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                })
                .foregroundColor(.clear)
                .cornerRadius(15)
            
            VStack {
                
                HStack {
                    
                    Text(department.department_name)
                        .font(.largeTitle)
                        .bold()
                    Spacer()
                }
                
            }
            .padding()
            .foregroundColor(.black)
        }
        .frame(height: 40)
        
    }
}

#Preview {
    DepartmentCard(department: Department(department_name: "HR",
                                          employees: [
                                              Employee(name: "John Smith",
                                                       position: "HR Manager",
                                                       email: "john.smith@abccorp.com",
                                                       phone: "+1 (123) 456-7890")]))
}
