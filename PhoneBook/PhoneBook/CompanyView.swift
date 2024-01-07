//
//  ContentView.swift
//  PhoneBook
//
//  Created by thegleven
//

import SwiftUI

struct CompanyView: View {
    
    @State var companies = [Company]()
    var dataService = DataService()
    
    var body: some View {
        
        NavigationStack {
            ScrollView (showsIndicators: false){
                VStack {
                    ForEach(companies) {company in
                        
                        NavigationLink {
                            DepartmentView(company: company)
                        } label: {
                            CompanyCard(company: company)
                        }
                    }
                }
            }
            .padding()
        }
//        .onAppear {
//            companies = dataService.getData()
//        }
        .ignoresSafeArea()
        .onAppear {
            companies = dataService.getFileData()
        }
    }
}

#Preview {
    CompanyView()
}
