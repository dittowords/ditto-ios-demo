//
//  DittoDescriptionText.swift
//  Banking App
//
//  Created by Jason Rodriguez on 10/10/23.
//

import SwiftUI

struct DittoDescriptionText: View {
    
    var text: String
    
    var body: some View {
        
        Text(text)
            .font(
                Font.custom("Inter", size: 14)
                    .weight(.medium)
            )
            .foregroundColor(Color(red: 0.52, green: 0.52, blue: 0.52))
        
    }
    
}

#Preview {
    DittoDescriptionText(text: "Some long description that explains something about something somewhere in the app.")
}
