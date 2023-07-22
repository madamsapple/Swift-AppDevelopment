//
//  MerchbycreativesApp.swift
//  Merchbycreatives
//
//  Created by Iti on 19/05/2023.
//

import SwiftUI

@main
struct MerchbycreativesApp: App {
    
    var catalogue = Catalogue()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(catalogue)
                .environment(\.colorScheme, .light)
                
        }
    }
}
