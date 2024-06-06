//
//  TestResultView.swift
//  MyLearning
//
//  Created on 06/06/2024.
//

import SwiftUI

struct TestResultView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var numCorrect: Int
    
    var resultHeading: String {
        
        guard model.currentModule != nil else {
            
            return ""
        }
        
        let pct = Double(numCorrect)/Double(model.currentModule!.test.questions.count)
        
        if pct > 0.5 {
            
            return "Awesome!"
            
        } else if pct > 0.2 {
            
            return "Doing great!"
            
        } else {
            
            return "Keep learning."
        }
    }
    
    var body: some View {
        
        Spacer()
        
        Text(resultHeading)
            .font(.title)
        
        Spacer()
        
        Text("You got \(numCorrect) out of \(model.currentModule?.test.questions.count ?? 0) questions")
        
        Spacer()
        
        Button {
            
            model.currentTestSelected = nil
            
        } label: {
            
            ZStack {
                
                RectangleCard(color: .green)
                    .frame(height: 48)
                    .padding()
                
                Text("Complete")
                    .bold()
                    .foregroundColor(.white)
            }
        }
        
        Spacer()
    }
}

//#Preview {
//    TestResultView()
//}
