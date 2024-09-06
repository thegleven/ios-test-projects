//
//  DashedDivider.swift
//  City Sights
//
//  Created on 06/09/2024.
//

import SwiftUI

struct DashedDivider: View {
    
    var body: some View {
        
        GeometryReader { geometry in
            
            Path { path in
                path.move(to: CGPoint.zero)
                path.addLine(to: CGPoint(x: geometry.size.width, y: 0))
            }
            .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
            .foregroundColor(.gray)
        }
        .frame(height: 1)
    }
}

#Preview {
    DashedDivider()
}
