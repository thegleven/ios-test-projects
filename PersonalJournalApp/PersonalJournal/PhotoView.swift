//
//  PhotoView.swift
//  PersonalJournal
//
//  Created by thegleven
//

import SwiftUI

struct PhotoView: View {
    
    @Binding var selectedPhoto: String
    
    var body: some View {
        
        Image(selectedPhoto)
            .resizable()
            .aspectRatio(contentMode: .fit)
        
    }
}

#Preview {
    PhotoView(selectedPhoto: Binding.constant("bunny2"))
}
