//
//  DittoTextFieldView.swift
//  Banking App
//
//  Created by Jason Rodriguez on 10/10/23.
//

import SwiftUI

struct DittoTextField: View {
    
    var placeholderText: String = ""
    @Binding var text: String
    
    var body: some View {
        
        TextField(placeholderText, text: $text)
            .padding(.vertical, 10.0)
            .padding(.horizontal, 16.0)
            .background(Color(red: 0.97, green: 0.97, blue: 0.99))
            .cornerRadius(6)
            .overlay(
                RoundedRectangle(cornerRadius: 6)
                    .inset(by: 0.5)
                    .stroke(Color(red: 0.89, green: 0.91, blue: 0.94), lineWidth: 1)
            )
        
    }
    
}

struct DittoTextField_Previews: PreviewProvider {
    @State static var text: String = ""
    static var previews: some View {
        return DittoTextField(placeholderText: "Placeholder", text: $text)
    }
}
