//
//  ContentView.swift
//  m4chall9
//
//  Created on 11/04/2024.
//

import SwiftUI

struct ContentView: View {
    
    let locations = [
        "Mexico City",
        "New York City",
        "Los Angeles",
        "Toronto",
        "Chicago",
        "Houston",
        "Havana",
        "Montréal",
        "Ecatepec de Morelos",
        "Philadelphia"
    ]
    
    let menuItems = [
        "Sweet potato fries",
        "Nachos",
        "Grilled salmon salad",
        "Pad thai",
        "Fish tacos",
        "Turkey burger",
        "Poutine",
        "Potato leek soup"
    ]
    
    let times = [
        "5 pm",
        "6 pm",
        "7 pm",
        "8 pm",
        "9 pm"
    ]
    
    @State var selectionTime = 0
    @State var selectionOrder = 0
    @State var selectionLocation = 0
    
    var body: some View {
        
        VStack (alignment: .center, spacing: 50) {
            
            Text("Ottimo Ristorante")
                .font(.largeTitle)
                .bold()
            
            Picker("Location", selection: $selectionLocation) {
                
                ForEach(0..<locations.count) { loc in
                    Text(locations[loc]).tag(loc)
                }
            }
            .pickerStyle(MenuPickerStyle())
            
            //            Text(locations[selectionLocation])
            //                .padding(.leading, 20)
        }
        
        Spacer()
        
        Text("Order:")
        Picker("Order", selection: $selectionOrder) {
            
            ForEach(0..<menuItems.count) { item in
                Text(menuItems[item]).tag(item)
                
            }
        }
        .pickerStyle(.wheel)
        
        Spacer()
        
        Text("Pickup time:")
        Picker("Time", selection: $selectionTime) {
            
            ForEach(0..<times.count) { time in
                Text(times[time]).tag(time)
            }
        }
        .pickerStyle(.segmented)
        .padding()
        
        Spacer()
        
        Button("Pick for me!") {
            selectionLocation = .random(in: 0..<locations.count)
            selectionOrder = .random(in: 0..<menuItems.count)
            selectionTime = .random(in: 0..<times.count)
        }
        .padding()
        
        
    }
}

#Preview {
    ContentView()
}
