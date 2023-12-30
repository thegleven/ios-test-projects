//
//  EntryItemView.swift
//  PersonalJournal
//
//  Created by theshamuel on 16/12/2023.
//

import SwiftUI

struct EntryItemView: View {
   
    @Binding var entryItems:[EntryItem]
    @State  var name: String = ""
    
    var body: some View {
       
        VStack {
            
            HStack {
                Spacer()
                Button {
                    //sheetButton.toggle()
                } label: {
                    Image(systemName: "xmark.circle.fill")
                }
                .tint(.gray)
            }
            .padding()
            
            TextField("Enter your journal entry...",
                    text: $name
                )
            .padding()
                
            Button {
               
                entryItems.append(EntryItem(name: name,
                                            photo: "bunny1",
                                            privateMode: true))
                
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
    EntryItemView(entryItems: .constant([EntryItem(name: "Entry 1",
                                         photo: "bunny1",
                                         privateMode: true)]))
}
