//
//  ContentView.swift
//  m2chell7
//
//  Created by thegleven on 06/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = ViewModel()
    
    var body: some View {
        
        VStack {
            List (model.pizzas) { pizza in
                VStack(alignment: .leading) {
                    Text(pizza.name)
                        .font(.headline)
                    HStack {
                        Text(pizza.topping1)
                        Text(pizza.topping2)
                        Text(pizza.topping3)
                    }
                }
            }
            Button("Add Pineapple") {
                model.addPineapple()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
