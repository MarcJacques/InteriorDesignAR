//
//  InteriorDesignAR.swift
//  InteriorDesignAR
//
//  Created by Marc Jacques on 7/14/21.
//
import SwiftUI

@main
struct InteriorDesignARApp: App {
    @StateObject var placementSettings = PlacementSettings()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(placementSettings)
        }
    }
}
