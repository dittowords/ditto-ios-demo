//
//  ConfirmIdentityView.swift
//  Banking App
//
//  Created by Jason Rodriguez on 10/9/23.
//

import SwiftUI

var countryList = ["Afghanistan","Albania","Algeria","Andorra","Angola","Anguilla","Antigua & Barbuda","Argentina","Armenia","Aruba","Australia","Austria","Azerbaijan","Bahamas","Bahrain","Bangladesh","Barbados","Belarus","Belgium","Belize","Benin","Bermuda","Bhutan","Bolivia","Bosnia & Herzegovina","Botswana","Brazil","British Virgin Islands","Brunei","Bulgaria","Burkina Faso","Burundi","Cambodia","Cameroon","Cape Verde","Cayman Islands","Chad","Chile","China","Colombia","Congo","Cook Islands","Costa Rica","Cote D Ivoire","Croatia","Cruise Ship","Cuba","Cyprus","Czech Republic","Denmark","Djibouti","Dominica","Dominican Republic","Ecuador","Egypt","El Salvador","Equatorial Guinea","Estonia","Ethiopia","Falkland Islands","Faroe Islands","Fiji","Finland","France","French Polynesia","French West Indies","Gabon","Gambia","Georgia","Germany","Ghana","Gibraltar","Greece","Greenland","Grenada","Guam","Guatemala","Guernsey","Guinea","Guinea Bissau","Guyana","Haiti","Honduras","Hong Kong","Hungary","Iceland","India","Indonesia","Iran","Iraq","Ireland","Isle of Man","Israel","Italy","Jamaica","Japan","Jersey","Jordan","Kazakhstan","Kenya","Kuwait","Kyrgyz Republic","Laos","Latvia","Lebanon","Lesotho","Liberia","Libya","Liechtenstein","Lithuania","Luxembourg","Macau","Macedonia","Madagascar","Malawi","Malaysia","Maldives","Mali","Malta","Mauritania","Mauritius","Mexico","Moldova","Monaco","Mongolia","Montenegro","Montserrat","Morocco","Mozambique","Namibia","Nepal","Netherlands","Netherlands Antilles","New Caledonia","New Zealand","Nicaragua","Niger","Nigeria","Norway","Oman","Pakistan","Palestine","Panama","Papua New Guinea","Paraguay","Peru","Philippines","Poland","Portugal","Puerto Rico","Qatar","Reunion","Romania","Russia","Rwanda","Saint Pierre & Miquelon","Samoa","San Marino","Satellite","Saudi Arabia","Senegal","Serbia","Seychelles","Sierra Leone","Singapore","Slovakia","Slovenia","South Africa","South Korea","Spain","Sri Lanka","St Kitts & Nevis","St Lucia","St Vincent","St. Lucia","Sudan","Suriname","Swaziland","Sweden","Switzerland","Syria","Taiwan","Tajikistan","Tanzania","Thailand","Timor L'Este","Togo","Tonga","Trinidad & Tobago","Tunisia","Turkey","Turkmenistan","Turks & Caicos","Uganda","Ukraine","United Arab Emirates","United Kingdom","Uruguay","Uzbekistan","Venezuela","Vietnam","Virgin Islands (US)","Yemen","Zambia","Zimbabwe"];

struct ConfirmIdentityView: View {
    
    @EnvironmentObject var router: Router
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            Image(ImageResource(name: "DittoPayLogo", bundle: Bundle.main))
                .frame(height: 25)
                .padding(.top, 18)
                .padding(.bottom, 25)
            
            DittoTitleText(text: Ditto.onboardingConfirmIdentityHeaderSample())
                .padding(.bottom, 25)
            
            ScrollView {
                
                VStack(alignment: .leading, spacing: 0) {
                    
                    VStack(alignment: .leading, spacing: 0) {
                        
                        Label(Ditto.onboardingInformationDisclaimerHeaderSample(), systemImage: "info.circle")
                            .font(
                                Font.custom("Inter", size: 14)
                                    .weight(.semibold)
                            )
                            .padding(.bottom, 10)
                        
                        Text(Ditto.onboardingInformationDisclaimerDescriptionSample())
                            .font(
                                Font.custom("Inter", size: 12)
                                    .weight(.medium)
                            )
                            .foregroundColor(Color(red: 0.21, green: 0.25, blue: 0.33))
                        
                    }
                    .padding(16)
                    .background(Color(red: 0.97, green: 0.97, blue: 0.99))
                    .cornerRadius(8)
                    .padding(.bottom, 25)
                    
                    DittoFieldHeaderText(text: Ditto.inputCountryOfResidenceLabelSample())
                    
                    DittoSelect(placeholder: Ditto.inputSelectPlaceholderSample(), options: countryList, selected: $appState.country)
                        .padding(.bottom, 25)
                    
                    DittoFieldHeaderText(text: Ditto.inputLast4SsnLabelSample())
                    
                    DittoDescriptionText(text: Ditto.inputConfirmIdentityHelperTextSample())
                        .padding(.bottom, 4)
                    
                    DittoTextField(placeholderText: "XXXX", text: $appState.last4OfSSN)
                    
                }
                
            }
            
            Spacer()
            
            DittoConfirmButton(title: Ditto.onboardingCtaNextSample()) {
                router.navigate(to: .signUpPhoneNumber)
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
        ConfirmIdentityView()
            .environmentObject(Router())
            .environmentObject(AppState())
    }
}
