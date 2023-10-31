//
//  Router.swift
//  Banking App
//
//  Created by Jason Rodriguez on 10/9/23.
//

import Foundation
import SwiftUI

final class Router: ObservableObject {
    
    public enum Destination: Codable, Hashable {
        case login
        case signUpProfile
        case signUpConfirmIdentity
        case signUpPhoneNumber
        case signUpPhoneNumberVerification
        case signUpLinkBank
        case signUpAccountDetails
    }
    
    @Published var navPath = NavigationPath([Destination.login])
    
    func navigate(to destination: Destination) {
        navPath.append(destination)
    }
    
    func replace(with destination: Destination) {
        navPath = NavigationPath([destination])
    }
    
    func navigateBack() {
        navPath.removeLast()
    }
    
    func navigateToRoot() {
        navPath.removeLast(navPath.count)
    }
}
