//
//  PizzaView.swift
//  m2chell12
//
//  Created by theshamuel on 14/03/2024.
//

import SwiftUI

struct PizzaView: View {
    var pizza:Pizza
    
    var body: some View {
        
        HStack {
            Image(pizza.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .cornerRadius(5)
                .clipped()
            
            VStack(alignment: .leading) {
                Text(pizza.name)
                    .font(.headline)
                
                HStack {
                    ForEach (pizza.toppings, id: \.self) {topping in
                        Text(topping)
                        
                    }
                }
                .font(.caption)
            }
        }
    }
}

#Preview {
    PizzaView(pizza: Pizza(id: UUID(), name: "Test", toppings: ["topping1", "toppping2"], image: "meatlovers"))
}
