//
//  SignUpPhoneNumberView.swift
//  Banking App
//
//  Created by Jason Rodriguez on 10/9/23.
//

import SwiftUI

extension String {
    
    func formatPhoneNumber() -> String {
        let cleanNumber = components(separatedBy: CharacterSet.decimalDigits.inverted).joined()
        
        let mask = "(XXX) XXX-XXXX"
        
        var result = ""
        var startIndex = cleanNumber.startIndex
        let endIndex = cleanNumber.endIndex
        
        for char in mask where startIndex < endIndex {
            if char == "X" {
                result.append(cleanNumber[startIndex])
                startIndex = cleanNumber.index(after: startIndex)
            } else {
                result.append(char)
            }
        }
        
        return result
    }
    
}

struct PhoneNumberView: View {
    
    @EnvironmentObject var router: Router
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            Image(ImageResource(name: "DittoPayLogo", bundle: Bundle.main))
                .frame(height: 25)
                .padding(.top, 18)
                .padding(.bottom, 25)
            
            DittoTitleText(text: Ditto.onboardingEnterPhoneNumberHeaderSample(userName: appState.firstName))
                .padding(.bottom, 6)
            
            ScrollView {
                
                VStack(alignment: .leading, spacing: 0) {
                    
                    DittoDescriptionText(text: Ditto.onboardingPhoneNumberH2Sample())
                        .padding(.bottom, 25)
                    
                    DittoTextField(placeholderText: Ditto.inputPhoneNumberPlaceholderSample(), text: $appState.phoneNumber).padding(.bottom, 8)
                    
                    DittoDescriptionText(text: Ditto.onboardingPhoneNumberDisclosureSample())
                        .onChange(of: appState.phoneNumber) {
                            if !appState.phoneNumber.isEmpty {
                                appState.phoneNumber = appState.phoneNumber.formatPhoneNumber()
                            }
                        }
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

#Preview {
    NavigationStack {
        PhoneNumberView()
            .environmentObject(Router())
            .environmentObject(AppState())
    }
}
