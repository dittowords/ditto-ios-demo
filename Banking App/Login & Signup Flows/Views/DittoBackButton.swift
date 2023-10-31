//
//  DittoBackButton.swift
//  Banking App
//
//  Created by Jason Rodriguez on 10/25/23.
//

import SwiftUI

struct DittoBackButton: View {
    
    var action: () -> Void
    
    init(action: @escaping () -> Void) {
        self.action = action
    }
    
    var body: some View {
        
        HStack(spacing: 0) {
            
            Spacer()
            
            Button(Ditto.onboardingCtaBackSample()) {
                action()
            }
            .font(Font.custom("Inter", size: 16))
            .foregroundColor(Color(red: 0.63, green: 0.63, blue: 0.63))
            
            Spacer()
            
        }
        
    }
    
}

struct DittoBackButton_Previews: PreviewProvider {
    static var previews: some View {
        DittoBackButton() {}
    }
}
