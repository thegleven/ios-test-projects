//
//  ContentView.swift
//  MyLibrary
//
//  Created by theshamuel on 25/04/2024.
//

import SwiftUI

struct BookList: View {
    
    @EnvironmentObject var model: BookModel
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                
                LazyVStack(alignment: .leading, spacing: 30) {
                    
                    ForEach (model.books) { book in
                        
                        NavigationLink(destination: BookCard(book: book)) {
                            BookCard(book: book)
                        }
                        .padding([.leading, .trailing], 20)
                    }
                }
            }
        }
    }
}

#Preview {
    BookList()
        .environmentObject(BookModel())
}
