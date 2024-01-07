//
//  DataService.swift
//  PhoneBook
//
//  Created by thegleven
//

import Foundation

struct DataService {
    
    func getData() -> [Company] {
        
        return [Company(company_name: "ABC Corporation",
                        company_image: "company1",
                        departments: [
                            Department(department_name: "HR",
                                        employees: [
                                            Employee(name: "John Smith",
                                                     position: "HR Manager",
                                                     email: "john.smith@abccorp.com",
                                                     phone: "+1 (123) 456-7890"),
                                            Employee(name: "Emily Davis",
                                                     position: "HR Specialist",
                                                     email: "emily.davis@abccorp.com",
                                                     phone: "+1 (234) 567-8901"),
                                            Employee(name: "Michael Johnson",
                                                     position: "HR Coordinator",
                                                     email: "michael.johnson@abccorp.com",
                                                     phone: "+1 (345) 678-9012"),
                                            Employee(name: "Sarah Brown",
                                                     position: "HR Assistant",
                                                     email: "sarah.brown@abccorp.com",
                                                     phone: "+1 (456) 789-0123")]),
                            Department(department_name: "Finance",
                                       employees: [
                                           Employee(name: "David Wilson",
                                                    position: "Finance Manager",
                                                    email: "david.wilson@abccorp.com",
                                                    phone: "+1 (567) 890-1234"),
                                           Employee(name: "Jennifer Lee",
                                                    position: "Financial Analyst",
                                                    email: "jennifer.lee@abccorp.com",
                                                    phone: "+1 (678) 901-2345"),
                                           Employee(name: "Robert Turner",
                                                    position: "Accountant",
                                                    email: "robert.turner@abccorp.com",
                                                    phone: "+1 (789) 012-3456"),
                                           Employee(name: "Laura Martinez",
                                                    position: "Finance Assistant",
                                                    email: "laura.martinez@abccorp.com",
                                                    phone: "+1 (890) 123-4567")])]),
                Company(company_name: "XYZ Inc.",
                        company_image: "company2",
                        departments: [
                            Department(department_name: "Sales",
                                       employees: [
                                        Employee(name: "Christopher Johnson",
                                                 position: "Sales Director",
                                                 email: "christopher.johnson@xyzinc.com",
                                                 phone: "+1 (555) 123-4567"),
                                        Employee(name: "Amanda Smith",
                                                 position: "Sales Manager",
                                                 email: "amanda.smith@xyzinc.com",
                                                 phone: "+1 (555) 234-5678")]),
                            Department(department_name: "Research and Development",
                                       employees: [
                                        Employee(name: "William Clark",
                                                 position: "Research Director",
                                                 email: "william.clark@xyzinc.com",
                                                 phone: "+1 (555) 345-6789"),
                                        Employee(name: "Emma Baker",
                                                 position: "Research Scientist",
                                                 email: "emma.baker@xyzinc.com",
                                                 phone: "+1 (555) 456-7890"),
                                        Employee(name: "Aiden Wright",
                                                 position: "Development Engineer",
                                                 email: "aiden.wright@xyzinc.com",
                                                 phone: "+1 (555) 567-8901"),
                                        Employee(name: "Grace Martinez",
                                                 position: "Product Designer",
                                                 email: "grace.martinez@xyzinc.com",
                                                 phone: "+1 (555) 678-9012")])
                            ]
                       )
        ]
    }
    
    func getFileData() -> [Company] {
        
        // get file
        
        if let url = Bundle.main.url(forResource: "dataServiceGuidebook", withExtension: "json") {

            do {
                // read the file
                let data = try Data(contentsOf: url)
                
                // parce data into Swift instances
                let decoder = JSONDecoder()
                
                do {
                    let companies = try decoder.decode([Company].self, from: data)
                    return companies
                }
                catch {
                    print("Couldn't parse the JSON: \(error)")
                }
            }
            catch {
                print("Couldn't read the file: \(error)")
            }

            
        }

        return [Company]()
    }
}
