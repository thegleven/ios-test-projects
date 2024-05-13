//
//  ContentModel.swift
//  MyLearning
//
//  Created on 08/05/2024.
//

import Foundation

class ContentModel: ObservableObject {
    
    //list of modules
    @Published var modules = [Module]()
    
    //current module
    @Published var currentModule: Module?
    var currentModuleIndex = 0
    
    
    var styleData: Data?
    
    init() {
        
        getLocalData()
    }
    
    //MARK: - Data methods
    
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
    
    //MARK: - Module navigation methods
    
    func beginModule(_ moduleId: Int) {
        
        //find the index for this module id
        for index in 0..<modules.count {
            
            if modules[index].id == moduleId {
                currentModuleIndex = index
                break
            }
        }
        
        //set the current module
        currentModule = modules[currentModuleIndex]
    }
    
}
