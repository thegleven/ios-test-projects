//
//  BookContent.swift
//  MyLibrary
//
//  Created on 30/04/2024.
//

import SwiftUI

struct BookContent: View {
    
    @EnvironmentObject var model: BookModel
    @State private var page = 0
    var book: Book
    
    var body: some View {
        
        TabView(selection: $page) {
            
            ForEach(book.content.indices) { index in
                
                VStack(alignment: .center) {
                    
                    Text(book.content[index])
                        .tag(index)
                    
                    Spacer()
                    
                    Text("\(page + 1)")
                }
            }
            .padding()
        }
        .tabViewStyle(.page)
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
        .onAppear {
            page = book.currentPage
        }        
       
    }
}

#Preview {
    BookContent(book: Book(id: 1,
                           title: "test",
                           author: "Test",
                           isFavourite: true,
                           currentPage: 10,
                           rating: 2,
                           content: ["test1","test2","test3","test4","test5"]))
        .environmentObject(BookModel())
}
