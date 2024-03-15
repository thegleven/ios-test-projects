//
//  QuotesDetailView.swift
//  m2chall16
//
//  Created 15/03/2024.
//

import SwiftUI

struct QuoteDetailView: View {
    
    var member: Member?
    
    var body: some View {
        
        if let member = member  {
            
            VStack(alignment: .leading, spacing: 20.0) {
                
                Text(member.name)
                    .font(.largeTitle)
                    .bold()
                
                    ForEach (member.quotes, id:\.self) {quote in
                        Text(quote)
                    }
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    QuoteDetailView(member: Member(name: "Test Name", image: "ambition", quoteTitle: "You miss 100% of the shots you don't take.", quotes: ["quote 1", "quote 2"]))
}
