//
//  ContentView.swift
//  Challenge
//
//  Created by thegleven on 01/03/2024.
//

import SwiftUI

struct ContentView: View {
    @State var stroka = 0
    @State var flag = false
    
    var body: some View {
        
        VStack {
            
            Text(String(stroka))
            
            Button {
                if flag == false {
                    increase()
                } else {
                    decrease()
                }
                
                if stroka > 50 {
                    flag = true
                } else if stroka < 0 {
                    flag = false
                }
            } label: {
                Text("button1")
            }
        }
    }
    func increase() {
        let rand = Int.random(in: 0...10)
        stroka = stroka + rand
    }
    func decrease() {
        let rand = Int.random(in: 0...10)
        stroka = stroka - rand
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
