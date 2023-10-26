//
//  AccountDetailsView.swift
//  Banking App
//
//  Created by Jason Rodriguez on 10/10/23.
//

import SwiftUI

struct AccountDetailsView: View {
    
    @EnvironmentObject var router: Router
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            Image("DittoPayLogo")
                .frame(height: 25)
                .padding(.top, 18)
                .padding(.bottom, 25)
            
            DittoTitleText(text: Ditto.onboardingAccountDetailsHeaderSample())
                .padding(.bottom, 6)
            
            DittoDescriptionText(text: Ditto.onboardingAccountDetailsHintTextSample())
                .padding(.bottom, 12)
            
            ScrollView {
                
                VStack(alignment: .leading, spacing: 0) {
                    
                    DittoFieldHeaderText(text: Ditto.inputEmailLabelSample())
                    
                    DittoTextField(placeholderText: Ditto.inputEmailPlaceholderSample(), text: $appState.email)
                        .padding(.bottom, 25)
                    
                    DittoFieldHeaderText(text: Ditto.inputPasswordLabelSample())
                    
                    DittoTextField(placeholderText: "************", text: $appState.password)
                        .padding(.bottom, 25)
                    
                    DittoFieldHeaderText(text: Ditto.inputConfirmPasswordLabelSample())
                    
                    DittoTextField(placeholderText: "************", text: $appState.confirmPassword)
                    
                }
                
            }
            
            Spacer()
            
            DittoConfirmButton(title: Ditto.onboardingCtaNextSample()) {
                router.replace(with: .login)
            }
            .padding(.bottom, 14)
            
            
            DittoBackButton() {
                router.navigateBack()
            }
            .padding(.bottom, 14)
            
            HStack(spacing: 4) {
                
                Spacer()
                
                Text(Ditto.onboardingSignUpDisclaimerSample(termsAndConditionsLink: "Terms and Conditions"))
                    .font(Font.custom("Inter", size: 16))
                    .foregroundColor(Color(red: 0.63, green: 0.63, blue: 0.63))
                
                Spacer()
            }
            
        }
        .navigationBarBackButtonHidden()
        .toolbar(.hidden)
        .padding(.horizontal, 25)
        
    }
    
}

struct AccountDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            AccountDetailsView()
                .environmentObject(Router())
                .environmentObject(AppState())
        }
    }
}
