//
//  Model.swift
//  m5chall14
//
//  Created on 10/06/2024.
//

import Foundation

class Model: ObservableObject {
    
    @Published var fact = ""
    
    init() {
        
        getFact()
    }
    
    func getFact() {
        
        //url to access
        let urlString = "http://numbersapi.com/random/trivia"
        
        //check create url from string
        if let url = URL(string: urlString) {
            
            //create dataTask
            URLSession.shared.dataTask(with: url) {(data, response, error) in
                
                //check for error
                if let error = error {
                    
                    print(error.localizedDescription)
                    return
                }
                
                //make sure there is data
                if let data = data {
                    
                    //turn the data into text form
                    if let stringData = String(data: data, encoding: .utf8) {
                        
                        DispatchQueue.main.async {
                            self.fact = stringData
                        }
                    }
                }
            }
            .resume()
        }
    }
}
