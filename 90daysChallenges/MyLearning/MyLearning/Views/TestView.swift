//
//  TestView.swift
//  MyLearning
//
//  Created on 29/05/2024.
//

import SwiftUI

struct TestView: View {
    
    @EnvironmentObject var model: ContentModel
    @State var selectedAnswerIndex: Int?
    @State var submitted = false
    @State var numCorrect = 0
    
    var body: some View {
        
        if model.currentQuestion != nil {
            
            VStack(alignment: .leading) {
                
                //question number
                Text("Question \(model.currentQuestionIndex + 1) of \(model.currentModule?.test.questions.count ?? 0)")
                    .padding(.leading, 20)
                
                //question
                CodeTextView()
                    .padding(.horizontal, 20)
                
                //answers
                ScrollView {
                    VStack {
                        ForEach (0..<model.currentQuestion!.answers.count, id: \.self) { index in
                            
                            Button {
                                
                                selectedAnswerIndex = index
                                
                            } label: {
                                
                                ZStack {
                                    
                                    if submitted == false {
                                        
                                        RectangleCard(color: index == selectedAnswerIndex ? .gray : .white)
                                            .frame(height: 48)
                                        
                                    } else {
                                        
                                        if index == selectedAnswerIndex && index == model.currentQuestion!.correctIndex {
                                            
                                            RectangleCard(color: Color.green)
                                                .frame(height: 48)
                                            
                                        } else if index == selectedAnswerIndex && index != model.currentQuestion!.correctIndex {
                                            
                                            RectangleCard(color: Color.red)
                                                .frame(height: 48)
                                            
                                        } else if index == model.currentQuestion!.correctIndex {
                                            
                                            RectangleCard(color: Color.green)
                                                .frame(height: 48)
                                            
                                        } else {
                                            
                                            RectangleCard(color: Color.white)
                                                .frame(height: 48)
                                        }
                                    }
                                    
                                    Text(model.currentQuestion!.answers[index])
                                }
                            }
                            .disabled(submitted)
                        }
                    }
                    .accentColor(.black)
                    .padding()
                }
                
                //button
                
                Button {
                    
                    if submitted == true {
                        
                        model.nextQuestion()
                        
                        submitted = false
                        
                        selectedAnswerIndex = nil
                        
                    } else {
                        
                        submitted = true
                        
                        if selectedAnswerIndex == model.currentQuestion!.correctIndex {
                            
                            numCorrect += 1
                        }
                    }
                    
                } label: {
                    
                    ZStack {
                        
                        RectangleCard(color: .green)
                            .frame(height: 48)
                        
                        Text(textButton)
                            .foregroundColor(.white)
                            .bold()
                    }
                    .padding()
                }
                .disabled(selectedAnswerIndex == nil)
            }
            .navigationBarTitle("\(model.currentModule?.category ?? "") Test")
        }
        else {
            
            TestResultView(numCorrect: numCorrect)
        }
    }
    
    var textButton: String {
        
        if submitted == true {
            
            if model.currentQuestionIndex + 1 == model.currentModule!.test.questions.count {
                
                return "Finish"
                
            } else {
                
                return "Next"
            }
            
        } else {
            
            return "Submit"
        }
    }
}

//#Preview {
//    TestView()
//}
