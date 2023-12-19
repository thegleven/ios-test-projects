//
//  JournalView.swift
//  PersonalJournal
//
//  Created by theshamuel on 16/12/2023.
//

import SwiftUI

struct JournalView: View {
    
    @State var sheetVisible = false
    @State var sheetButton = false
    @State var selectedPhoto = ""
   
    @State var entryItems:[EntryItem] = [EntryItem]()
    var dataEntries = DataEntries()
    
    var body: some View {
        
        VStack {
            ScrollView {
                
                LazyVGrid (columns: [GridItem(spacing: 0),
                                     GridItem(spacing: 0),
                                     GridItem(spacing: 0)],
                           spacing: 0) {
                    
                    ForEach (entryItems, id: \.id) { item in
                        
                        VStack {
                            
                            Image(item.photo)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .onTapGesture {
                                    selectedPhoto = item.photo
                                    sheetVisible = true
                                }
                            Text(item.name)
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
                EntryItemView()
            }
            
        }
        .padding()
        .onAppear {
            entryItems = dataEntries.getData()
        }
        .sheet(isPresented: $sheetVisible) {
            PhotoView(selectedPhoto: $selectedPhoto)
        }
        
    }

}

#Preview {
    JournalView()
}
