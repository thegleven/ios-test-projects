//
//  BookCardView.swift
//  MyLibrary
//
//  Created on 25/04/2024.
//

import SwiftUI

struct BookCard: View {
    
    var book: Book
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(20)
                .shadow(color: .gray, radius: 15, x: -5, y: 5)
            
            VStack(alignment: .leading, spacing: 10) {
                
                HStack {
                    
                    Text(book.title)
                        .font(.title)
                        .bold()
                    
                    Spacer()
                    
                    if book.isFavourite == true {
                        
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.yellow)
                    }
                }
                
                Text(book.author)
                    .italic()
                
                Image("cover\(book.id)")
                    .resizable()
                    .scaledToFit()
            }
            .padding()
        }
        .accentColor(.black)
    }
}

#Preview {
    BookCard(book: Book(id: 1,
                        title: "Test",
                        author: "Test",
                        isFavourite: true,
                        currentPage: 1,
                        rating: 1,
                        content: ["1", "2"]))
}
