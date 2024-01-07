//
//  DepartmentView.swift
//  PhoneBook
//
//  Created by thegleven
//

import SwiftUI

struct DepartmentView: View {
    
    var company: Company
    
    var body: some View {
        
        ScrollView (showsIndicators: false) {
            VStack {
                ForEach(company.departments) {department in
                    
                    NavigationLink {
                        EmployeeView(department: department)
                    } label: {
                        DepartmentCard(department: department)
                            .padding(.bottom, 30)
                    }
                    
                    }
                }
            .padding()
            }
        
    }
}

#Preview {
    DepartmentView(company: Company(company_name: "ABC Corporation",
                                    company_image: "company1",
                                    departments: [
                                        Department(department_name: "HR",
                                                    employees: [
                                                        Employee(name: "John Smith",
                                                                 position: "HR Manager",
                                                                 email: "john.smith@abccorp.com",
                                                                 phone: "+1 (123) 456-7890")])]))
}
