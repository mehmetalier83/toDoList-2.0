//
//  LoginViewViewModel.swift
//  AlphatoDoList
//
//  Created by Mehmet Ali Er on 1.02.2024.
//

import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var alertItem: AlertItem?
    
    init() {}
    
    func login(){
        guard isValidForm() else {
            return
        }
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
