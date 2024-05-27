//
//  ContentView.swift
//  m5chall7
//
//  Created on 27/05/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        WebView(url: URL(string: "http://codewithchris.com")!)
            .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    ContentView()
}
