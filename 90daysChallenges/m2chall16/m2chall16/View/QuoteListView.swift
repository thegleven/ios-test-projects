//
//  QuotesListView.swift
//  m2chall16
//
//  Created 15/03/2024.
//

import SwiftUI

struct QuoteListView: View {
    
    var member: Member
    var body: some View {
        
        ZStack {
            
            Image(member.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(15)
            
            // VStack for the text
            VStack(alignment: .leading, spacing: 10.0) {
                Text(member.quoteTitle)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    
                Text("- " + member.name)
                    .font(.caption)
                    .padding([.leading, .bottom, .trailing])
            }
            .padding([.top, .leading], 20.0)
            .shadow(color: .black, radius: 10, x: 2, y: 2)
        }
        .foregroundColor(Color.white)
        .frame(width: .none, height: 400, alignment: .center)
        .clipped()
        .cornerRadius(15)
        .padding([.leading, .trailing])
    }
}

#Preview {
    QuoteListView(member: Member(name: "Test Name", image: "ambition", quoteTitle: "You miss 100% of the shots you don't take.", quotes: ["quote 1", "quote 2"]))
}
