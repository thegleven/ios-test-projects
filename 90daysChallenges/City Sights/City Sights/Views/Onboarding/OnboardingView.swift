//
//  OnboardingView.swift
//  City Sights
//
//  Created on 05/09/2024.
//

import SwiftUI

struct OnboardingView: View {
    
    @EnvironmentObject var model: ContentModel
    @State private var tabSelection = 0
    
    private let blue = Color(red: 0/255, green: 130/255, blue: 167/255)
    private let turguoise = Color(red: 55/255, green: 197/255, blue: 192/255)
    
    var body: some View {
        
        VStack {
            
            TabView(selection: $tabSelection) {
                
                //First tab
                VStack (spacing: 20) {
                    Image("city2")
                        .resizable()
                        .scaledToFit()
                    
                    Text("Welcome to City Sights!")
                        .bold()
                        .font(.title)
                    
                    Text("City Sights helps you find the best of the city!")
                }
                .multilineTextAlignment(.center)
                .padding()
                .foregroundColor(.white)
                .tag(0)
                
                //Second tab
                VStack (spacing: 20) {
                    Image("city1")
                        .resizable()
                        .scaledToFit()
                    
                    Text("Ready to discover your city?")
                        .bold()
                        .font(.title)
                    
                    Text("We'll show you the best restaurants, venues and more, based on your location!")
                }
                .multilineTextAlignment(.center)
                .padding()
                .foregroundColor(.white)
                .tag(1)
                
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            
            Button {
                
                //Detect which tab is it
                if tabSelection == 0 {
                    tabSelection = 1
                }
                else {
                    //Request for geolocation permission
                    model.requestGeolocationPermission()
                }
                    
            } label: {
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(height: 48)
                        .cornerRadius(10)
                    
                    Text(tabSelection == 0 ? "Next" : "Get my location")
                        .bold()
                        .padding()
                }
            }
            .accentColor(tabSelection == 0 ? blue : turguoise)
            .padding()
            
            Spacer()
        }
        .background(tabSelection == 0 ? blue : turguoise)
        .ignoresSafeArea()
    }
}

#Preview {
    OnboardingView()
}
