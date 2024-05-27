//
//  WebView.swift
//  m5chall7
//
//  Created on 27/05/2024.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    var url: URL
    
    func makeUIView(context: Context) -> some UIView {
        
        let webView = WKWebView()
        
        //create the request and load it
        let request = URLRequest(url: url)
        
        webView.load(request)
        
        return webView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
        return
    }
}

