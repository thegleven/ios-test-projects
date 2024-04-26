//
//  ContentView.swift
//  MyLibrary
//
//  Created on 25/04/2024.
//

import SwiftUI

struct BookList: View {
    
    @EnvironmentObject var model: BookModel
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                
                LazyVStack(alignment: .leading, spacing: 30) {
                    
                    ForEach (model.books) { book in
                        
                        NavigationLink(destination: Staging(book: book)) {
                            BookCard(book: book)
                                .padding([.leading, .trailing], 20)
                        }
                    }
                }
                .padding(.top)
            }
            .navigationTitle("My Library")
        }
    }
}

#Preview {
    BookList()
        .environmentObject(BookModel())
}
