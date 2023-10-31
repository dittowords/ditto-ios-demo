//
//  DittoCancelButton.swift
//  Banking App
//
//  Created by Jason Rodriguez on 10/11/23.
//

import SwiftUI

struct DittoCancelButton: View {
    
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
            
        }
        .cornerRadius(1000)
        .font(
            Font.custom("Inter", size: 18)
                .weight(.semibold)
        )
        .foregroundColor(Color(red: 0.31, green: 0.27, blue: 0.9))
        .overlay(
            RoundedRectangle(cornerRadius: 1000)
                .inset(by: 0.5)
                .stroke(Color(red: 0.31, green: 0.27, blue: 0.9), lineWidth: 1)
        )
        
    }
    
}

struct DittoCancelButton_Previews: PreviewProvider {
    static var previews: some View {
        DittoCancelButton(title: "Cancel") {
            
        }
    }
}

