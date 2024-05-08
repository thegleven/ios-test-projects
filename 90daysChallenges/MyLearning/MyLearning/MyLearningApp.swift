//
//  MyLearningApp.swift
//  MyLearning
//
//  Created on 08/05/2024.
//

import SwiftUI

@main
struct MyLearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
