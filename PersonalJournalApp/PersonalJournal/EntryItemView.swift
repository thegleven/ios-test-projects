//
//  EntryItemView.swift
//  PersonalJournal
//
//  Created by theshamuel on 16/12/2023.
//

import SwiftUI

struct EntryItemView: View {
   
    @State private var entryItem: String = ""
    
    var body: some View {
       
        VStack {
            
            HStack {
                Spacer()
                Button {
                } label: {
                    Image(systemName: "xmark.circle.fill")
                }
                .tint(.gray)
            }
            .padding()
            
            TextField("Enter your journal entry...",
                    text: $entryItem
                )
            .padding()
                
            Button {
            } label: {
                Text("Save Entry")
                    .font(.title2)
            }
            .font(.title)
        }
        .padding()
    }
    
}

#Preview {
    EntryItemView()
}
