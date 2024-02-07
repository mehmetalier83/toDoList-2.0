//
//  RegisterView.swift
//  AlphatoDoList
//
//  Created by Mehmet Ali Er on 1.02.2024.
//

import SwiftUI

struct RegisterView: View {
    @StateObject private var viewModel = RegisterViewViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                // header
                Image("app-logo")
                    .resizable()
                    .frame(width: 130, height: 130)
                    .padding(.top, 100)
                // body
                Form {
                    Section("Kayıt Ol") {
                        TextField("Tam adınız", text: $viewModel.name)
                            .autocorrectionDisabled()
                        TextField("Email", text: $viewModel.email)
                            .autocorrectionDisabled()
                            .autocapitalization(.none)
                        SecureField("Şifreniz", text: $viewModel.password)
                    }
                }
                .frame(height: 250)
                BigButton(title: "Kayıt Ol", action: {
                    viewModel.register()
                })
                .alert(item: $viewModel.alertItem) { alertItem in
                    Alert(title: alertItem.name,
                          message: alertItem.message,
                          dismissButton: alertItem.dismissButton)
                }
                // footer
            }
            
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
