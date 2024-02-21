//
//  ContentView.swift
//  PersonalJournal
//
//  Created by thegleven
//

import SwiftUI

struct MainView: View {
    
    @State private var privateMode: Bool = false
    
    var body: some View {
        
            TabView {
                
                JournalView(privateMode: $privateMode)
                    .tabItem {
                        VStack {
                            Image(systemName: "book.fill")
                            Text("Journal")
                        }
                    }
                
                SettingsView(privateMode: $privateMode)
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
