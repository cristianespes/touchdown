//
//  TouchDownApp.swift
//  TouchDown
//
//  Created by Cristian Espes on 23/01/2021.
//

import SwiftUI

@main
struct TouchDownApp: App {
    
    @State private var shop = Shop()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(shop)
        }
    }
}
