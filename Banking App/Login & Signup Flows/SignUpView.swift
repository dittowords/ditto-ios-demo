//
//  SignUpView.swift
//  Banking App
//
//  Created by Jason Rodriguez on 10/9/23.
//

import SwiftUI

struct SignUpView: View {
    
    @EnvironmentObject var router: Router
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            Image("DittoPayLogo")
                .frame(height: 25)
                .padding(.top, 18)
                .padding(.bottom, 25)
            
            DittoTitleText(text: Ditto.onboardingProfileHeaderSample())
                .padding(.bottom, 6)
            
            ScrollView {
                
                VStack(alignment: .leading, spacing: 0) {
                    
                    Group {
                        
                        DittoDescriptionText(text: Ditto.onboardingProfileIdDisclaimerSample())
                            .padding(.bottom, 25)
                        
                        DittoFieldHeaderText(text: Ditto.inputFirstNameLabelSample())
                        
                        DittoTextField(placeholderText: "", text: $appState.firstName)
                            .padding(.bottom, 25)
                        
                        DittoFieldHeaderText(text: Ditto.inputMiddleNameLabelSample())
                        
                        DittoDescriptionText(text: Ditto.inputMiddleNameHelperTextSample())
                            .padding(.bottom, 4)
                        
                        DittoTextField(placeholderText: "", text: $appState.middleName)
                            .padding(.bottom, 25)
                        
                    }
                    
                    Group {
                        
                        DittoFieldHeaderText(text: Ditto.inputLastNameLabelSample())
                        
                        DittoTextField(placeholderText: "", text: $appState.lastName)
                            .padding(.bottom, 25)
                        
                        DittoFieldHeaderText(text: Ditto.inputBirthdayLabelSample())
                        
                        DittoDescriptionText(text: Ditto.inputBirthdayHelperTextSample())
                            .padding(.bottom, 4)
                        
                        DittoTextField(placeholderText: Ditto.inputBirthdayPlaceholderSample(), text: $appState.dateOfBirth)
                        
                    }
                    
                }
                
            }
            
            Spacer()
            
            DittoConfirmButton(title: Ditto.onboardingCtaNextSample()) {
                router.navigate(to: .signUpConfirmIdentity)
            }
            .padding(.bottom, 14)
            
            HStack {
                
                Spacer()
                
                Text(Ditto.onboardingSignUpLoginMessageSample())
                    .font(Font.custom("Inter", size: 16))
                    .foregroundColor(Color(red: 0.63, green: 0.63, blue: 0.63))
                
                Button(Ditto.onboardingLogInHeaderSample()) {
                    router.replace(with: .login)
                }
                .font(Font.custom("Inter", size: 16))
                .foregroundColor(Color(red: 0.31, green: 0.27, blue: 0.9))
                
                Spacer()
                
            }
            
        }
        .navigationBarBackButtonHidden()
        .toolbar(.hidden)
        .padding(.horizontal, 25)
        
    }
    
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SignUpView()
                .environmentObject(Router())
                .environmentObject(AppState())
        }
    }
}
