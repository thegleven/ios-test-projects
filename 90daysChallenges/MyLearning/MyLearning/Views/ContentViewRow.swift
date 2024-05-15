//
//  ContentViewRow.swift
//  MyLearning
//
//  Created on 13/05/2024.
//

import SwiftUI

struct ContentViewRow: View {
    
    @EnvironmentObject var model: ContentModel
    var index: Int
    
    var body: some View {
        
        let lesson = model.currentModule!.content.lessons[index]
        
        //lesson card
        ZStack(alignment: .leading) {
            
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .frame(height: 66)
            
            HStack(spacing: 30) {
                
                Text(String(index + 1))
                    .bold()
                
                VStack(alignment: .leading) {
                    
                    Text(lesson.title)
                        .bold()
                    
                    Text(lesson.duration)
                }
            }
            .padding()
        }
    }
}

//#Preview {
//    ContentViewRow(index: 1)
//        .environmentObject(ContentModel())
//}
