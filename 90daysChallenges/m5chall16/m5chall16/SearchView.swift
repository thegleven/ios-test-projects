//
//  ContentView.swift
//  m5chall16
//
//  Created on 11/06/2024.
//

import SwiftUI
import AVKit

struct SearchView: View {
    
    @ObservedObject var model: Model
    @State private var searchText = ""
    
    var body: some View {
        
        NavigationView {
            List {
                SearchBar(text: $searchText)
                
                ForEach(model.videos) { video in
                    NavigationLink(video.title, destination: VideoPlayerView(video: video))
                }
            }
            .navigationBarTitle(Text("All video"))
            .onChange(of: searchText) { text in
                model.filterVideos(text)
                
            }
        }
    }
}

#Preview {
    SearchView(model: Model())
}
