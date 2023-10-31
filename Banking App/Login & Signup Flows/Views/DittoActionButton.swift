//
//  DittoActionButton.swift
//  Banking App
//
//  Created by Jason Rodriguez on 10/25/23.
//

import SwiftUI

struct DittoActionButton: View {
    
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
            
        }
        .font(
            Font.custom("Inter", size: 14)
                .weight(.semibold)
        )
        .foregroundColor(Color(red: 0.31, green: 0.27, blue: 0.9))
        
    }
    
}

struct DittoActionButton_Previews: PreviewProvider {
    static var previews: some View {
        DittoActionButton(title: "Cancel") {
            
        }
    }
}
