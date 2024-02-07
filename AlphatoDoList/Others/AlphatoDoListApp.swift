// 
//  AlphatoDoListApp.swift
//  AlphatoDoList
//
//  Created by Mehmet Ali Er on 1.02.2024.
//

import SwiftUI
import FirebaseCore

@main
struct AlphatoDoListApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
