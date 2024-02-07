// 
//  Alerts.swift
//  AlphatoDoList
//
//  Created by Mehmet Ali Er on 2.02.2024.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let name: Text
    let message: Text
    let dismissButton: Alert.Button
}

enum AlertContext {
    
    // MARK: ACCOUNT ALERT
    static let invalidForm = AlertItem(name: Text("Geçersiz Form"),
                                       message: Text("Lütfen tüm alanları doldurun."),
                                       dismissButton: .default(Text("OK")))
    static let invalidEmail = AlertItem(name: Text("Geçersiz Email"),
                                        message: Text("Lütfen geçerli bir email giriniz."),
                                        dismissButton: .default(Text("OK")))
    
      static let userSaveSuccess  = AlertItem(name: Text("Profile Saved"),
                                              message: Text("Your profile information was successfully saved."),
                                              dismissButton: .default(Text("OK")))
      
      static let invalidUserData  = AlertItem(name: Text("Profile Error"),
                                              message: Text("There was an error saving or retrieving your profile."),
                                              dismissButton: .default(Text("OK")))
}
