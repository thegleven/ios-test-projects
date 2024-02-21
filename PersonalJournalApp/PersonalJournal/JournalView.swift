//
//  JournalView.swift
//  PersonalJournal
//
//  Created by thegleven
//

import SwiftUI

struct JournalView: View {
    
    @State private var sheetVisible = false
    @State private var sheetButton = false
    @State private var selectedPhoto = ""
   
    @State private var entryItems:[EntryItem] = [EntryItem]()
    
    @Binding var privateMode: Bool
    
    var dataEntries = DataEntries()
    
    var body: some View {
        
        VStack {
            ScrollView {
                
                LazyVGrid (columns: [GridItem(spacing: 0),
                                     GridItem(spacing: 0),
                                     GridItem(spacing: 0)],
                           spacing: 0) {
                    
                    
                    
                    ForEach (entryItems, id: \.id) { item in
                        
                        if privateMode == true && item.privateMode == privateMode {
                            
                            VStack {
                                
                                Image(item.photo)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .onTapGesture {
                                        selectedPhoto = item.photo
                                        sheetVisible = true
                                    }
                                Text(item.name)
                                Text(String(item.privateMode))
                            }
                        } else if privateMode == false {
                            
                            VStack {
                                
                                Image(item.photo)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .onTapGesture {
                                        selectedPhoto = item.photo
                                        sheetVisible = true
                                    }
                                Text(item.name)
                                Text(String(item.privateMode))
                            }
                        }
                    }
                }
            }
            
            Button {
                Task {
                    sheetButton = true
                }
            } label: {
                Text("Add Entry")
                    .font(.title2)
            }
            .font(.title)
            .sheet(isPresented: $sheetButton) {
                
                EntryItemView(entryItems: $entryItems, sheetButton: $sheetButton, privateMode: $privateMode)
            }
            
        }
        .padding()
//        .onAppear {
//            entryItems = dataEntries.getData()
//        }
        .sheet(isPresented: $sheetVisible) {
            PhotoView(selectedPhoto: $selectedPhoto)
        }
        
    }

}

#Preview {
    JournalView(privateMode: .constant(false))
}
