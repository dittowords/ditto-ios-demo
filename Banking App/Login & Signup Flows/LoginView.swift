//
//  LoginView.swift
//  Banking App
//
//  Created by Jason Rodriguez on 10/9/23.
//

import SwiftUI

struct LoginView: View {
    @State var emailAddress: String = ""
    @State var password: String = ""
    @EnvironmentObject var router: Router
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            HStack {
                
                Spacer()
                
                Image(ImageResource(name: "DittoPayLogo", bundle: Bundle.main))
                    .frame(height: 35)
                
                Spacer()
                
            }
            .padding(.top, 30)
            .padding(.bottom, 35)
            
            DittoTitleText(text: Ditto.onboardingLogInHeaderSample())
                .padding(.bottom, 25)
            
            DittoFieldHeaderText(text: Ditto.inputEmailLabelSample())
            
            DittoTextField(placeholderText: Ditto.inputEmailPlaceholderSample(), text: $emailAddress)
                .padding(.bottom, 15)
            
            DittoFieldHeaderText(text: Ditto.inputPasswordLabelSample())
            
            DittoTextField(placeholderText: "************", text: $password)
                .padding(.bottom, 10)
            
            HStack {
                
                Spacer()
                
                DittoActionButton(title: Ditto.onboardingCtaForgotPasswordSample()) {}
                
            }
            .padding(.bottom, 31)
            
            
            DittoConfirmButton(title: Ditto.onboardingLogInHeaderSample()) {}
                .padding(.bottom, 14)
            
            HStack {
                
                Spacer()
                
                Text(Ditto.onboardingLogInSignUpMessageSample())
                    .font(Font.custom("Inter", size: 16))
                    .foregroundColor(Color(red: 0.63, green: 0.63, blue: 0.63))
                
                Button(Ditto.onboardingSignUpCtaSample()) {
                    router.replace(with: .signUpProfile)
                }
                .font(Font.custom("Inter", size: 16))
                .foregroundColor(Color(red: 0.31, green: 0.27, blue: 0.9))
                
                Spacer()
                
            }
            
            Spacer()
            
        }
        .navigationBarBackButtonHidden()
        .toolbar(.hidden)
        .padding(.horizontal, 25)
        
    }
    
}

#Preview {
    NavigationStack {
        LoginView()
    }
}
