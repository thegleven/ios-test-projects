//
//  EntryItemView.swift
//  PersonalJournal
//
//  Created by thegleven
//

import SwiftUI

struct EntryItemView: View {
   
    @Binding var entryItems:[EntryItem]
    @Binding var sheetButton: Bool
    
    @Binding var privateMode: Bool
    
    @State  var name: String = ""
    
    var body: some View {
       
        VStack {
            
            HStack {
                Spacer()
                Button {
                    
                    sheetButton = false
                    
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
                                            privateMode: privateMode))
                sheetButton = false
                
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
                                                   privateMode: true)]),
                  sheetButton: .constant(true),
                  privateMode: .constant(false))
}
