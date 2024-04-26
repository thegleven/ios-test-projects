//
//  Staging.swift
//  MyLibrary
//
//  Created on 26/04/2024.
//

import SwiftUI

struct Staging: View {
    
    @EnvironmentObject var model: BookModel
    @State private var rating = 2
    var book: Book
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            NavigationLink(destination: BookCard(book: book)) {
                
                VStack {
                    Text("Read Now!")
                        .font(.title)
                        .accentColor(.black)
                    
                    Image("cover\(book.id)")
                        .resizable()
                        .scaledToFit()
                }
            }
            .padding()
            
            Text("Mark for later")
                .font(.headline)
            
            Button(action: {
                
            }, label: {
                Image(systemName: book.isFavourite ? "star.fill" : "star")
                    .resizable()
                    .frame(width: 30, height: 30)
            })
            .accentColor(.yellow)
            
            Spacer()
            
            Text("Rate \(book.title)")
                .font(.headline)
            
            Picker("Rate book", selection: $rating) {
                ForEach(1..<6) { index in
                    Text("\(index)")
                        .tag(index)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding([.leading, .trailing, .bottom], 60)
            
        }
        .onAppear { rating = book.rating }
        .navigationBarTitle("\(book.title)")
    }
}


#Preview {
    Staging(book: Book(id: 1,
                       title: "",
                       author: "",
                       isFavourite: true,
                       currentPage: 1,
                       rating: 1,
                       content: ["", ""]))
}
