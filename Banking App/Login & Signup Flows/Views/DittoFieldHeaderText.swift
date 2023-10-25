//
//  DittoText.swift
//  Banking App
//
//  Created by Jason Rodriguez on 10/10/23.
//

import SwiftUI

struct DittoFieldHeaderText: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(
                Font.custom("Inter", size: 16)
                    .weight(.semibold)
            )
            .foregroundColor(Color(red: 0.07, green: 0.07, blue: 0.07))
            .padding(.bottom, 4)
        
    }
    
}

#Preview {
    DittoFieldHeaderText(text: "Email Example")
}
