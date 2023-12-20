//
//  ButtonView.swift
//  Movie
//
//  Created by thegleven on 30/11/2023.
//

import SwiftUI

struct ButtonView: View {
    
    var buttonText: String
    
    var action: () -> Void
    
    var body: some View {
        
        Button(action: action, label: {
            Text(buttonText)
                .padding()
                .border(.blue)
        })
    }

}

#Preview {
    ButtonView(buttonText: ""){}
}


