//
//  FructusApp.swift
//  Fructus
//
//  Created by Lucas Newlands on 29/03/22.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnBoardingView()
            } else {
                ContentView()
            }
            
        }
    }
}
