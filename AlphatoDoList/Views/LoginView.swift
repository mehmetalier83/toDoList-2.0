// 
//  LoginView.swift
//  AlphatoDoList
//
//  Created by Mehmet Ali Er on 1.02.2024.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                //Header
                    Image("app-logo")
                        .resizable()
                        .frame(width: 130,height: 130)
                .padding(.top,100)
                //Body
                Form{
                    TextField("E-mail adresinizi giriniz.", text: $viewModel.email)
                    SecureField("Şifrenizi giriniz.", text: $viewModel.password)
                }
                .frame(height: 150)
                BigButton(title: "Giriş Yapınız", action: viewModel.login)
                    .alert(item: $viewModel.alertItem) { alertItem in
                        Alert(title: alertItem.name,
                              message: alertItem.message,
                              dismissButton: alertItem.dismissButton)
                    }
                Spacer()
                //Footer
                VStack{
                    Text("Buralarda yenisin galiba.")
                    NavigationLink("Yeni hesap oluştur", destination: RegisterView())
                }
                .padding()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
