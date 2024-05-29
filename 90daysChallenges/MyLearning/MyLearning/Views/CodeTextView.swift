//
//  CodeTextView.swift
//  MyLearning
//
//  Created on 24/05/2024.
//

import SwiftUI

struct CodeTextView: UIViewRepresentable {
    
    @EnvironmentObject var model: ContentModel
    
    func makeUIView(context: Context) -> UITextView {
        
        let textView = UITextView()
        
        textView.isEditable = false
        
        return textView
    }
    
    func updateUIView(_ textView: UITextView, context: Context) {
        
        //set the attributed text for the lesson
        textView.attributedText = model.codeText
        
        //scroll back to the top
        textView.scrollRectToVisible(CGRect(x: 0, y: 0, width: 1, height: 1), animated: false)
    }
}

#Preview {
    CodeTextView()
}
