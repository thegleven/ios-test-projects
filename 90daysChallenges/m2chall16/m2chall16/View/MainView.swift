//
//  ContentView.swift
//  m2chall16
//
//  Created 15/03/2024.
//

import SwiftUI

struct MainView: View {
    
    @ObservedObject var model = MemberModel()
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                
                VStack(alignment: .leading, spacing: 20.0) {
                  
                    ForEach (model.members) { m in
                        
                        NavigationLink(
                            destination: QuoteDetailView(member: m),
                            label: {
                                QuoteListView(member: m)
                            })
                    }
                }
            }
            .navigationTitle("Members")
        }
    }
}

#Preview {
    MainView()
}
