//
//  HomeViewRow.swift
//  MyLearning
//
//  Created by theshamuel on 10/05/2024.
//

import SwiftUI

struct HomeViewRow: View {
    
    var image: String
    var title: String
    var description: String
    var count: String
    var time: String
    
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .aspectRatio(CGSize(width: 335, height: 175), contentMode: .fit)
            
            HStack {
                
                //Image
                Image(image)
                    .resizable()
                    .frame(width: 116, height: 116)
                    .clipShape(Circle())
                
                Spacer()
                
                //Text
                VStack(alignment: .leading, spacing: 10) {
                    
                    //Headline
                    Text(title)
                        .bold()
                    
                    //Description
                    Text(description)
                        .padding(.bottom, 20)
                        .font(.caption)
                    
                    //Icons
                    HStack {
                        
                        //Number of lesson/questions
                        Image(systemName: "text.book.closed")
                            .resizable()
                            .frame(width: 15, height: 15)
                        
                        Text(count)
                            //.font(.caption)
                            .font(Font.system(size: 10))
                        
                        Spacer()
                        
                        //Time
                        Image(systemName: "clock")
                            .resizable()
                            .frame(width: 15, height: 15)
                        
                        Text(time)
                            //.font(.caption)
                            .font(Font.system(size: 10))
                    }
                }
                .padding(.leading, 20)
                
            }
            .padding([.horizontal], 20)
        }
    }
}

#Preview {
    HomeViewRow(image: "", title: "", description: "", count: "test", time: "")
}
