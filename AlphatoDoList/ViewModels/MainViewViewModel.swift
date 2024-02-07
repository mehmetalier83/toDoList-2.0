// 
//  MainViewViewModel.swift
//  AlphatoDoList
//
//  Created by Mehmet Ali Er on 1.02.2024.
//

import Foundation
import FirebaseAuth

class MainViewViewModel : ObservableObject {
    @Published var currentUserId : String = ""
    
    init(){
        Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    public var isSignedIn : Bool {
        return Auth.auth().currentUser != nil
    }
    
}
