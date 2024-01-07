//
//  EmployeeView.swift
//  PhoneBook
//
//  Created by thegleven
//

import SwiftUI

struct EmployeeView: View {
    
    var department: Department
    
    var body: some View {
        
        ScrollView (showsIndicators: false) {
            VStack {
                ForEach(department.employees) {employee in
                    
                    NavigationLink {
                        DetailView(employee: employee)
                    } label: {
                        EmployeeCard(employee: employee)
                            .padding(.bottom, 30)
                    }
                    
                    }
                }
            .padding()
            }
    }
}

#Preview {
    EmployeeView(department: Department(department_name: "HR",
                                                    employees: [
                                                        Employee(name: "John Smith",
                                                                 position: "HR Manager",
                                                                 email: "john.smith@abccorp.com",
                                                                 phone: "+1 (123) 456-7890")]))
}

