//
//  LinkBankView.swift
//  Banking App
//
//  Created by Jason Rodriguez on 10/9/23.
//

import SwiftUI

struct LinkBankView: View {
    
    @EnvironmentObject var router: Router
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            Image(ImageResource(name: "DittoPayLogo", bundle: Bundle.main))
                .frame(height: 25)
                .padding(.top, 18)
                .padding(.bottom, 25)
            
            DittoTitleText(text: Ditto.onboardingLinkBankHeaderSample())
                .padding(.bottom, 6)
            
            ScrollView {
                
                VStack(alignment: .leading, spacing: 0) {
                    
                    DittoDescriptionText(text: Ditto.onboardingLinkBankH2Sample())
                        .padding(.bottom, 25)
                    
                    DittoFieldHeaderText(text: Ditto.cardsLabelCardNumberSample())
                    
                    DittoTextField(placeholderText: "", text: $appState.cardNumber)
                        .padding(.bottom, 25)
                    
                    HStack(spacing: 0) {
                        
                        VStack(alignment: .leading, spacing: 0) {
                            
                            DittoFieldHeaderText(text: Ditto.cardsLabelExpirationSample())
                            
                            DittoTextField(placeholderText: Ditto.inputCardExpirationPlaceholderSample(), text: $appState.expiration)
                            
                        }
                        
                        Spacer(minLength: 12)
                        
                        VStack(alignment: .leading, spacing: 0) {
                            
                            DittoFieldHeaderText(text: Ditto.inputCvvLabelSample())
                            
                            DittoTextField(placeholderText: "***", text: $appState.cvv)
                            
                        }
                        
                    }
                    .padding(.bottom, 25)
                    
                    DittoFieldHeaderText(text: Ditto.inputZipCodeLabelSample())
                    
                    DittoTextField(placeholderText: "", text: $appState.zip)
                        .padding(.bottom, 25)
                    
                    HStack(spacing: 10) {
                        
                        Image(systemName: "checkerboard.shield")
                        
                        DittoDescriptionText(text: Ditto.onboardingLinkBankDisclaimerSample(nmlsId: "004532"))
                        
                    }
                    .foregroundColor(Color(red: 0.63, green: 0.63, blue: 0.63))
                    
                }
                
            }
            
            Spacer()
            
            HStack(spacing: 12) {
                
                DittoCancelButton(title: Ditto.onboardingCtaSkipSample()) {
                    router.navigate(to: .signUpAccountDetails)
                }
                
                DittoConfirmButton(title: Ditto.onboardingCtaNextSample()) {
                    router.navigate(to: .signUpAccountDetails)
                }
                
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
        LinkBankView()
            .environmentObject(Router())
            .environmentObject(AppState())
    }
}
