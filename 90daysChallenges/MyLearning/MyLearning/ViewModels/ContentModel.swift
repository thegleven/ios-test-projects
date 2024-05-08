//
//  ContentModel.swift
//  MyLearning
//
//  Created on 08/05/2024.
//

import Foundation

class ContentModel: ObservableObject {
    
    @Published var modules = [Module]()
    
    var styleData: Data?
    
    init() {
        
        getLocalData()
    }
    
    func getLocalData() {
        
        //get a url to the json file
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        
        do {
            //read the file
            let jsonData = try Data(contentsOf: jsonUrl!)
            //try to decode
            let jsonDecoder = JSONDecoder()
            let modules = try jsonDecoder.decode([Module].self, from: jsonData)
            //assign parsed
            self.modules = modules
        }
        catch {
            print("Couldn't parse local data")
        }
        
        //parse the style data
        let styleUrl = Bundle.main.url(forResource: "style", withExtension: "html")
        
        do {
            
            //read the file
            let styleData = try Data(contentsOf: styleUrl!)
            self.styleData = styleData
        }
        catch {
            print("Couldn't parse style data")
        }
    }
}
