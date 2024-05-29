//
//  TestView.swift
//  MyLearning
//
//  Created on 29/05/2024.
//

import SwiftUI

struct TestView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        if model.currentQuestion != nil {
            
            VStack {
                
                //question number
                Text("Question \(model.currentQuestionIndex + 1) of \(model.currentModule?.test.questions.count ?? 0)")
                
                //question
                CodeTextView()
                
                //answers
                
                //button
                
            }
            .navigationBarTitle("\(model.currentModule?.category ?? "") Test")
        }
        else {
            
            ProgressView()
        }
    }
}

#Preview {
    TestView()
}
