//
//  SignUpPhoneNumberView.swift
//  Banking App
//
//  Created by Jason Rodriguez on 10/9/23.
//

import SwiftUI	

struct PhoneNumberView: View {
    
    @EnvironmentObject var router: Router
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            Image("DittoPayLogo")
                .frame(height: 25)
                .padding(.top, 18)
                .padding(.bottom, 25)
            
            DittoTitleText(text: Ditto.onboardingEnterPhoneNumberHeaderSample(userNameSample: appState.firstName))
                .padding(.bottom, 6)
            
            ScrollView {
                
                VStack(alignment: .leading, spacing: 0) {
                    
                    DittoDescriptionText(text: Ditto.onboardingPhoneNumberH2Sample())
                        .padding(.bottom, 25)
                    
                    DittoTextField(placeholderText: Ditto.inputPhoneNumberPlaceholderSample(), text: $appState.phoneNumber).padding(.bottom, 8)
                    
                    DittoDescriptionText(text: Ditto.onboardingPhoneNumberDisclosureSample())
                    
                }
                
            }
            
            Spacer()
            
            DittoConfirmButton(title: Ditto.onboardingCtaNextSample()) {
                router.navigate(to: .signUpPhoneNumberVerification)
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

struct PhoneNumberView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            PhoneNumberView()
                .environmentObject(Router())
                .environmentObject(AppState())
        }
    }
}
