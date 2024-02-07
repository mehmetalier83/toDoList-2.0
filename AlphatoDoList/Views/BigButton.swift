// 
//  BigButton.swift
//  AlphatoDoList
//
//  Created by Mehmet Ali Er on 2.02.2024.
//

import SwiftUI

struct BigButton: View {
    let title : String
    let action: () -> Void
    var body: some View {
        Button (action: action , label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.primary)
                Text(title)
                    .foregroundColor(.white)
            }
            
        })
        .frame(height: 50)
        .padding(.horizontal)
    }
}

struct BigButton_Previews: PreviewProvider {
    static var previews: some View {
        BigButton(title: "Örnek", action: {})
    }
}
