//
//  DittoTitleText.swift
//  Banking App
//
//  Created by Jason Rodriguez on 10/11/23.
//

import SwiftUI

struct DittoTitleText: View {
    
    var text: String
    
    var body: some View {
        
        Text(text)
            .font(
                Font.custom("Inter", size: 32)
                    .weight(.bold)
            )
            .foregroundColor(Color(red: 0.07, green: 0.07, blue: 0.07))
            .multilineTextAlignment(.leading)
        
    }
    
}

struct DittoTitleText_Previews: PreviewProvider {
    static var previews: some View {
        DittoTitleText(text: "Some long Title")
    }
}
