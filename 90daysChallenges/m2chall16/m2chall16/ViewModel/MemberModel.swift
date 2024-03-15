//
//  MemberModel.swift
//  m2chall16
//
//  Created 15/03/2024.
//

import Foundation

class MemberModel: ObservableObject {
    
    @Published var members = [Member]()
    
    init() {
        // Get members from JSON
        self.members = getDataJson()
    }
    
    func getDataJson() -> [Member] {
        
        // Get path in app bundle
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        if let pathString = pathString {
        
            // Create URL object
            let url = URL(fileURLWithPath: pathString)
            
            do {
                // Create Data object
                let data = try Data(contentsOf: url)
                
                // Decode the json data
                let decoder = JSONDecoder()
                var members = try decoder.decode([Member].self, from: data)
                
                // Add UUID
                for index in 0..<members.count {
                    members[index].id = UUID()
                }
                
                return members
            }
            catch {
                print("error")
            }
        }
        
        return [Member]()
    }
}
