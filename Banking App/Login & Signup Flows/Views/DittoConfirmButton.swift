//
//  DittoConfirmButton.swift
//  Banking App
//
//  Created by Jason Rodriguez on 10/10/23.
//

import SwiftUI

struct DittoConfirmButton: View {
    
    var action: () -> Void
    var title: String
    
    init(title: String, action: @escaping () -> Void) {
        self.action = action
        self.title = title
    }
    
    var body: some View {
        Button {
            action()
        } label: {
            
            Text(title)
                .padding(.vertical, 12)
                .padding(.horizontal, 24)
                .frame(maxWidth: .infinity, alignment: .center)
                .foregroundColor(.white)
            
        }
        .background(Color(red: 0.31, green: 0.27, blue: 0.9))
        .cornerRadius(1000)
        .font(
            Font.custom("Inter", size: 18)
                .weight(.semibold)
        )
        
    }
    
}

struct DittoConfirmButton_Previews: PreviewProvider {
    static var previews: some View {
        DittoConfirmButton(title: "Example Button") {
            
        }
    }
}
