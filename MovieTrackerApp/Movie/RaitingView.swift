//
//  RaitingView.swift
//  Movie
//
//  Created by thegleven on 01/12/2023.
//

import SwiftUI

struct RaitingView: View {
    var rating: Int
    
    var body: some View {
        HStack {
            switch rating {
            case 1:
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            case 2:
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            case 3:
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            case 4:
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            case 5:
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            default:
                Image(systemName: "")
            }

        }
    }
}

#Preview {
    RaitingView(rating: 1)
}
