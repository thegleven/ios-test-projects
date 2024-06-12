//
//  Model.swift
//  m5chall16
//
//  Created on 11/06/2024.
//

import Foundation

class Model: ObservableObject {
    
    var allVideo = [Video]()
    @Published var videos = [Video]()
    
    init() {
        
        self.getData()
    }
    
    func getData() {
        
        guard let url = URL(string: "https://codewithchris.github.io/Module5Challenge/Data.json")
        else {
            return
        }
        
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            
            if let data = data, let videos = try? JSONDecoder().decode([Video].self, from: data) {
                
                self.allVideo = videos
                
                DispatchQueue.main.async {
                    
                    self.videos = videos
                }
            }
            
        }
        .resume()
    }
    
    func filterVideos(_ searchText: String) {
        
        videos = allVideo.filter({ searchText.isEmpty ? true : $0.title.localizedCaseInsensitiveContains(searchText)})
    }
}
