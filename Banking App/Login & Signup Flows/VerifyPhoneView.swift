//
//  SignUpVerifyPhoneView.swift
//  Banking App
//
//  Created by Jason Rodriguez on 10/9/23.
//

import SwiftUI

struct VerifyPhoneView: View {
    @EnvironmentObject var router: Router
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            
            Image(ImageResource(name: "DittoPayLogo", bundle: Bundle.main))
                .frame(height: 25)
                .padding(.top, 18)
                .padding(.bottom, 25)
            
            DittoTitleText(text: Ditto.onboardingPhoneNumberVerificationHeaderSample())
                .padding(.bottom, 6)
            
            ScrollView {
                
                VStack(alignment: .leading, spacing: 0) {
                    
                    DittoDescriptionText(text: Ditto.onboardingPhoneNumberVerificationHintTextSample(pluralCount: 10, userPhoneNumber: appState.phoneNumber, verificationCodeExpiration: "2"))
                        .padding(.bottom, 25)
                    
                    DittoTextField(placeholderText: "XXXXX", text: $appState.code)
                    
                }
                
            }
            
            Spacer()
            
            HStack(spacing: 4) {
                
                Spacer()
                
                Text(Ditto.onboardingPhoneNumberVerificationDidntReceiveSample())
                    .font(Font.custom("Inter", size: 16))
                    .foregroundColor(Color(red: 0.63, green: 0.63, blue: 0.63))
                
                Button(Ditto.onboardingPhoneNumberVerificationResendSample()) {}
                    .font(Font.custom("Inter", size: 16))
                    .foregroundColor(Color(red: 0.31, green: 0.27, blue: 0.9))
                
                Spacer()
            }
            .padding(.bottom, 14)
            
            DittoConfirmButton(title: Ditto.onboardingCtaNextSample()) {
                router.navigate(to: .signUpLinkBank)
            }
            .padding(.bottom, 14)
            
            DittoBackButton() {
                router.navigateBack()
            }
            
        }
        .navigationBarBackButtonHidden()
        .toolbar(.hidden)
        .padding(.horizontal, 25)
        
    }
    
}

#Preview {
    NavigationStack {
        VerifyPhoneView()
            .environmentObject(Router())
            .environmentObject(AppState())
    }
}
