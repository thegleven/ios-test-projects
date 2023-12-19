//
//  SettingsView.swift
//  PersonalJournal
//
//  Created by theshamuel on 16/12/2023.
//

import SwiftUI

struct SettingsView: View {
    @State private var privateMode = false
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
    SettingsView()
}
