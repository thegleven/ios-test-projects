//
//  ContentView.swift
//  Movie
//
//  Created by thegleven on 30/11/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var movieItems:[MovieItem] = [MovieItem]()
    var dataMovie = DataMovie()
    
    @State var title: String = "Movies"
    
    var body: some View {
        
        VStack {
            
            HStack {
                Text(title)
                    .padding()
                    .bold()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            
            Spacer()
           
            
            List(movieItems) { item in
                
                VStack (alignment: .leading, spacing: 5.0) {
                    
                    HStack {
                        
                        Text(item.name)
                            .bold()
                        
                        Spacer()
                        
                        Text(item.yearRelease)
                    }
                   
                    HStack {
                        Text("Directed by: " + item.directorName)
                        Spacer()
                    }
                    
                    Spacer()
                    
                    Text(item.description)
                        
                    Spacer()
                    
                    HStack {
                        Text("Personal Rating:")
                        RaitingView(rating: item.rating)
                        Spacer()
                    }
                    
                    Spacer()
                }
            }
            .listStyle(.plain)
            .onAppear {
                //Call for the data
                movieItems = dataMovie.getData()
            }
            
            HStack {
                
                ButtonView(buttonText: "List to Watch"){
                    title = "List to Watch"
                    movieItems = dataMovie.getListToWatch()
                }
                
                ButtonView(buttonText: "Watched"){
                    title = "Watched"
                    movieItems = dataMovie.getWatched()
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
