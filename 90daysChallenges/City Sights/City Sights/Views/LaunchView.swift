//
//  LaunchView.swift
//  City Sights
//
//  Created on 13/06/2024.
//

import SwiftUI
import CoreLocation

struct LaunchView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        // Detect the authorization status of geolocating the user
        
        if model.authorizationState == .notDetermined {
            // If undetermined, show onboarding
            OnboardingView()
        }
        else if model.authorizationState == .authorizedAlways ||
                    model.authorizationState == .authorizedWhenInUse {
            // If approved, show home view
            HomeView()
        }
        else {
            // If denied show denied view
            LocationDeniedView()
        }
    }
}

#Preview {
    LaunchView()
}
