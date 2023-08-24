//
//  threadsApp.swift
//  threads
//
//  Created by Yazan Ghunaim on 8/23/23.
//

import SwiftUI
import Firebase

@main
struct threadsApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
