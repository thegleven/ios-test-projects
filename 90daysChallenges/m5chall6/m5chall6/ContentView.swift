//
//  ContentView.swift
//  m5chall6
//
//  Created on 21/05/2024.
//

import SwiftUI
import AVKit

struct ContentView: View {
    
    let url = URL(fileURLWithPath: Bundle.main.path(forResource: "video", ofType: "mp4")!)
    
    //video.mp4 is 1920 x 1080
    let videoRatio: CGFloat = 9 / 16
    
    var body: some View {
        
        GeometryReader { geo in
            
            VStack(alignment: .leading) {
                
                VideoPlayer(player: AVPlayer(url: url))
                    .frame(height: geo.size.width * videoRatio)
                    .cornerRadius(10)
                
                ScrollView {
                    
                    LazyVStack(alignment: .leading, spacing: 20) {
                        
                        Text("Description")
                            .bold()
                            .font(.title)
                        
                        Text(descriptionText)
                            .multilineTextAlignment(.leading)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
