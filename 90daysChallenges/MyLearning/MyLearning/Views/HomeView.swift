//
//  ContentView.swift
//  MyLearning
//
//  Created on 08/05/2024.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .leading) {
                
                Text("What do you want to do today?")
                    .padding(.leading, 20)
                
                ScrollView {
                    
                    LazyVStack() {
                        
                        ForEach(model.modules) { module in
                            
                            VStack(spacing: 20) {
                                
                                NavigationLink(
                                    destination:
                                        ContentView()
                                        .onAppear(perform: {
                                            model.beginModule(module.id)
                                        }),
                                    label: {
                                        //Learning
                                        HomeViewRow(image: module.content.image,
                                                    title: "Learn \(module.category)",
                                                    description: module.content.description,
                                                    count: "\(module.content.lessons.count) Lessons",
                                                    time: module.content.time)
                                    }
                                )
                                
                                //Test
                                HomeViewRow(image: module.test.image,
                                            title: "\(module.category) Test",
                                            description: module.test.description,
                                            count: "\(module.test.questions.count) Questions",
                                            time: module.test.time)
                            }
                        }
                    }
                    .accentColor(.black)
                    .padding()
                }
            }
            .navigationTitle("Get started")
        }
        
    }
}

#Preview {
    HomeView()
        .environmentObject(ContentModel())
}
