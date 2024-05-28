//
//  ChildView.swift
//  m5chall8
//
//  Created on 28/05/2024.
//

import SwiftUI

struct ChildView: View {
    
    @Binding var selectedView: Int?
    
    var body: some View {
        
        VStack {
            
            Text("I am view \(selectedView ?? 0)")
                .font(.largeTitle)
            
            Button(action: {
                
                selectedView = nil
                
            }, label: {
                
                Text("Go back")
            })
            .padding()
        }
        .navigationBarHidden(true)
        .padding()
    }
}

#Preview {
    ChildView(selectedView: .constant(1))
}
