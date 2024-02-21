//
//  SettingsView.swift
//  PersonalJournal
//
//  Created by thegleven
//

import SwiftUI

struct SettingsView: View {
    
    @Binding var privateMode: Bool
    
    var body: some View {
        
        HStack {
            
            Toggle(isOn: $privateMode) {
                    Text("Private Mode")
                }
        }
        .padding()
    }
}

#Preview {
    SettingsView(privateMode: .constant(false))
}
