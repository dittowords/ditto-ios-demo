//
//  DittoSelect.swift
//  Banking App
//
//  Created by Jason Rodriguez on 10/10/23.
//

import SwiftUI

struct DittoSelect: View {
    
    var placeholder: String
    var options: [String]
    @Binding var selected: String?
    @State var isExpanded: Bool = false
    
    var body: some View {
        Menu {
            
            ForEach(options, id: \.self) { item in
                
                Button {
                    selected = item
                } label: {
                    Text(item)
                }
                
            }
            
        } label: {
            
            HStack {
                
                Text(selected ?? placeholder)
                    .foregroundColor(Color(red: 0.67, green: 0.67, blue: 0.67))
                
                Spacer()
                
                Image(systemName: "chevron.down").frame(width: 21, height: 21)
                    .foregroundColor(Color(red: 0.67, green: 0.67, blue: 0.67))
                
            }
            .font(
                Font.custom("Inter", size: 13)
                    .weight(.medium)
            )
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .frame(maxWidth: .infinity, minHeight: 40, maxHeight: 40, alignment: .center)
            .background(Color(red: 0.97, green: 0.97, blue: 0.99))
            .cornerRadius(6)
            .overlay(
                RoundedRectangle(cornerRadius: 6)
                    .inset(by: 0.5)
                    .stroke(Color(red: 0.89, green: 0.91, blue: 0.94), lineWidth: 1)
            )
            
        }
        
    }
    
}

struct DittoSelect_Previews: PreviewProvider {
    @State static var selection: String?
    static var previews: some View {
        var countryList = ["Afghanistan","Albania","Algeria","Andorra"];
        var placeholder = "Select"
        return DittoSelect(placeholder: placeholder, options: countryList, selected: $selection)
    }
}
