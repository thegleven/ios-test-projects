//
//  BookModel.swift
//  MyLibrary
//
//  Created on 25/04/2024.
//

import Foundation

class BookModel: ObservableObject {
    
    @Published var books = [Book]()
    
    init() {
        // Get members from JSON
        self.books = getDataJson()
    }
    
    func getDataJson() -> [Book] {
        
        // Get path in app bundle
        let pathString = Bundle.main.path(forResource: "books", ofType: "json")
        
        if let pathString = pathString {
        
            // Create URL object
            let url = URL(fileURLWithPath: pathString)
            
            do {
                // Create Data object
                let data = try Data(contentsOf: url)
                
                // Decode the json data
                let decoder = JSONDecoder()
                books = try decoder.decode([Book].self, from: data)
                
                return books
            }
            catch {
                print("error")
            }
        }
        
        return [Book]()
    }
    
    func updatePage(forId: Int, page: Int) {
        
        if let index = books.firstIndex(where: { $0.id == forId}) {
            books[index].currentPage = page
        }
    }
    
    func updateRating(forId: Int, rating: Int) {
        
        if let index = books.firstIndex(where: { $0.id == forId}) {
            books[index].rating = rating
        }
    }
    
    func updateFavourite(forId: Int) {
        if let index = books.firstIndex(where: { $0.id == forId}) {
            books[index].isFavourite.toggle()
        }
    }
    
}
