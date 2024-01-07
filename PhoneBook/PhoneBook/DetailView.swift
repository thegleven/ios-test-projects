//
//  DetailView.swift
//  PhoneBook
//
//  Created by thegleven
//

import SwiftUI

struct DetailView: View {
    
    var employee: Employee
    
    var body: some View {
        
        ScrollView {
                VStack (spacing: 20) {
                    HStack {
                        Text(employee.name)
                            .font(.title)
                            .bold()
                        Spacer()
                        Image("employeeCard")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    }
                    Spacer()
                    
                    VStack (alignment: .leading, spacing: 20) {
                        HStack {
                            Text("Position: ")
                            Text(employee.position)
                            Spacer()
                        }
                        HStack {
                            Text("Email: ")
                            Button {
                                
                                //create url john.smith@abccorp.com
                                if let url = URL(string: "mailto:\(employee.email)") {
                                if UIApplication.shared.canOpenURL(url) {
                                    
                                    //open
                                    UIApplication.shared.open(url)
                                }
                            }
                                
                            } label: {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        .foregroundColor(.blue)
                                        .frame(height:40)
                                    Text(employee.email)
                                        .foregroundColor(.white)
                                }
                            }
                            Spacer()
                        }
                        HStack {
                            Text("Phone: ")
                            Button {
                                
                                //create url
                                if let url = URL(string: "sms:+1234567890&body=Hello Abc How are You I am ios developer.") {
                                    
                                    //test can be open
                                    if UIApplication.shared.canOpenURL(url) {
                                        
                                        //open
                                        UIApplication.shared.open(url)
                                    }
                                }
                            } label: {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        .foregroundColor(.blue)
                                        .frame(height:40)
                                    Text(employee.phone)
                                        .foregroundColor(.white)
                                }
                            }
                            Spacer()
                        }
                    }
                    .font(.title2)
                    .bold()

                        Spacer()
                    }
            }
            .padding()
            .foregroundColor(.black)
        
    }
}

#Preview {
    DetailView(employee: Employee(name: "John Smith",
                                  position: "HR Manager",
                                  email: "john.smith@abccorp.com",
                                  phone: "+1 (123) 456-7890"))
}
