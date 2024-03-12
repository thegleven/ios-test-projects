//
//  ContentView.swift
//  m2chell12
//
//  Created by theshamuel on 13/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = PizzaModel()
    
    var body: some View {
        
        ScrollView  {
            
            VStack(alignment: .leading) {
                ForEach (model.pizzas) {item in
                    
                    PizzaView(pizza: item)
                }
            }
        }
        
        
//        List(model.pizzas) {pizza in
//            
//            HStack {
//                Image(pizza.image)
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                    .frame(width: 60, height: 60)
//                    .cornerRadius(5)
//                    .clipped()
//                
//                VStack(alignment: .leading) {
//                    Text(pizza.name)
//                        .font(.headline)
//                    
//                    HStack {
//                        Text(pizza.toppings[0] + ",")
//                        Text(pizza.toppings[1] + ",")
//                        Text(pizza.toppings[2])
//                    }
//                    .font(.caption)
//                }
//            }
//        }
    }
}

#Preview {
    ContentView()
}
