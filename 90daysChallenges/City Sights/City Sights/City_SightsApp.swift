//
//  City_SightsApp.swift
//  City Sights
//
//  Created on 13/06/2024.
//

import SwiftUI

@main
struct City_SightsApp: App {
    var body: some Scene {
        WindowGroup {
            LaunchView()
                .environmentObject(ContentModel())
        }
    }
}
