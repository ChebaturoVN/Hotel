//
//  hotelApp.swift
//  hotel
//
//  Created by VladimirCH on 08.09.2023.
//

import SwiftUI

@main
struct hotelApp: App {
    var body: some Scene {
        WindowGroup {
            Coordinator().startMainView()
        }
    }
}
