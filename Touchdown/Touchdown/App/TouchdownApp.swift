//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Rodrigo Conte on 02/02/24.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
