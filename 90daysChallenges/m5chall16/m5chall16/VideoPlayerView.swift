//
//  VideoPlayerView.swift
//  m5chall16
//
//  Created on 12/06/2024.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    let video: Video
    let aspectRatio: CGFloat = 478 / 849
    
    var body: some View {
        
        if let url = URL(string: video.url) {
            
            VStack(alignment: .leading) {
                
                Text(video.title)
                    .font(.title)
                    .bold()
                    .padding()
                
                GeometryReader { geo in
                    
                    VideoPlayer(player: AVPlayer(url: url))
                        .frame(height: geo.size.width * aspectRatio)
                }
            }
        } else {
            
            Text("Something went wrong")
                .font(.title2)
                .padding()
        }
    }
}

#Preview {
    VideoPlayerView(video: Video(id: 1, title: "Video Title", url: "https://codewithchris.github.io/Module5Challenge/Lesson%201.mp4"))
}
