//
//  ContentView.swift
//  m4chall6
//
//  Created on 28/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: PeopleModel
    
    var body: some View {
        
        TabView {
            
            VStack {
                Text("People")
                    .font(.title)
                    .bold()
                
                List(model.people) {person in
                    PeopleDetailView(person: person)
                }
            }
            .tabItem {
                (Image(systemName: "person.2"))
            }
            
            VStack {
                
                Text("Display Preferences")
                    .font(.title)
                    .bold()
                
                Toggle("Show name:", isOn: $model.showName)
                
                Toggle("Show address:", isOn: $model.showAddress)
                
                Toggle("Show company:", isOn: $model.showCompany)
                
                Toggle("Show years of experience:", isOn: $model.showYearExp)
                
                Spacer()
            }
            .tabItem {
                VStack {
                    Image(systemName: "gearshape")
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView().environmentObject(PeopleModel())
}
