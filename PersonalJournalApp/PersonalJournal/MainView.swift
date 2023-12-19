//
//  ContentView.swift
//  PersonalJournal
//
//  Created by theshamuel on 16/12/2023.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        
            TabView {
                
                JournalView()
                    .tabItem {
                        VStack {
                            Image(systemName: "book.fill")
                            Text("Journal")
                        }
                    }
                
                SettingsView()
                    .tabItem {
                        VStack {
                            Image(systemName: "gear")
                            Text("Settings")
                        }
                    }
            }
    }
}

#Preview {
    MainView()
}
