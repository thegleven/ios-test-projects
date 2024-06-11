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
    
    var lesson: Lesson {
        
        if model.currentModule != nil && index < model.currentModule!.content.lessons.count {
            
            return model.currentModule!.content.lessons[index]
        }
        else {
            
            return Lesson(id: 0, title: "", video: "", duration: "", explanation: "")
        }
    }
    
    var body: some View {
        
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
                    
                    Text("Video - \(lesson.duration)")
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
