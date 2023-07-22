//
//  Main.swift
//  Merchbycreatives
//
//  Created by Iti on 27/05/2023.
//

import Foundation
import SwiftUI

struct Main: View {
    var body: some View {
        TabView {
            
            Landingpage()
                .tabItem {
                    Label("Home", systemImage: "list.dash")
                }
            
            Insights()
                .tabItem {
                    Label("Insights", systemImage: "square.and.pencil")
                }
            
            
            
            Highlights()
                .tabItem {
                    Label("Highlights", systemImage: "square.and.pencil")
                }
            
            
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
