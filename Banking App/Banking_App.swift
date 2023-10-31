//
//  Banking_AppApp.swift
//  Banking App
//
//  Created by Jason Rodriguez on 10/9/23.
//

import SwiftUI

class AppState: ObservableObject {
    
    // Signup Inputs
    
    @Published var firstName: String = ""
    @Published var middleName: String = ""
    @Published var lastName: String = ""
    @Published var dateOfBirth: String = ""
    
    // Confirm Identity Inputs
    
    @Published var country: String?
    @Published var last4OfSSN: String = ""
    
    // Phone Inputs
    
    @Published var phoneNumber: String = ""
    @Published var code: String = ""
    
    // Bank Info
    
    @Published var cardNumber: String = ""
    @Published var expiration: String = ""
    @Published var cvv: String = ""
    @Published var zip: String = ""
    
    // Account Inputs
    
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var confirmPassword: String = ""
}

@main
struct Banking_App: App {
    
    @ObservedObject var router = Router()
    @ObservedObject var appState = AppState()
    
    var body: some Scene {
        
        WindowGroup {
            
            NavigationStack(path: $router.navPath) {
                
                RouterView()
                    .navigationDestination(for: Router.Destination.self) { destination in
                        switch destination {
                        case .login:
                            LoginView()
                        case .signUpProfile:
                            SignUpView()
                        case .signUpConfirmIdentity:
                            ConfirmIdentityView()
                        case .signUpPhoneNumber:
                            PhoneNumberView()
                        case .signUpPhoneNumberVerification:
                            VerifyPhoneView()
                        case .signUpLinkBank:
                            LinkBankView()
                        case .signUpAccountDetails:
                            AccountDetailsView()
                        }
                    }
                
            }
            .environmentObject(router)
            .environmentObject(appState)
            
        }
        
    }
}
