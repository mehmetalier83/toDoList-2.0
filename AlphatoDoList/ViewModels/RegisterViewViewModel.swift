// 
//  RegisterViewViewModel.swift
//  AlphatoDoList
//
//  Created by Mehmet Ali Er on 1.02.2024.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class RegisterViewViewModel: ObservableObject {
    
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    @Published var alertItem: AlertItem?
    
    
    init() {}
    
    func register(){
        guard isValidForm() else {
            return
        }
        // weak self :
        Auth.auth().createUser(withEmail: email, password: password){ [weak self] result , error in
            guard let userId = result?.user.uid else {
                return
            }
             
            // İnsert metotu çağrılacak
            self?.insertUserRecord(id: userId)
        }
    }
    
    private func insertUserRecord(id : String) {
        let newUser = User(id: id, name: name, email: email, joined: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionar())
        
        
    }
    
    func isValidForm() -> Bool {
        guard !email.isEmpty && !password.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        guard email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
        return true
    }
    
}

