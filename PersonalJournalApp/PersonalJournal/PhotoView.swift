//
//  PhotoView.swift
//  PersonalJournal
//
//  Created by theshamuel on 18/12/2023.
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
