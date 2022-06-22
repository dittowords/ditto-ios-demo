//
//  BecomeAHostView.swift
//  Dittobnb
//
//  Created by Jason Rodriguez on 6/21/22.
//

import SwiftUI

struct BecomeAHostView: View {
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    Text("landing.body.join-hosts.title")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom)
                    hostImage("hosts0")
                    hostText("landing.body.join-hosts.host-home")
                    hostImage("hosts1")
                    hostText("landing.body.join-hosts.host-experience")
                    hostImage("hosts2")
                    hostText("landing.body.join-hosts.host-online-experience")
                }
                .padding(.horizontal)
            }
        }
    }
    
    @ViewBuilder
    func hostText(_ text: LocalizedStringKey) -> some View {
        Text(text)
            .font(.headline)
            .padding(.bottom)
            .padding(.top, 4)
    }
    
    @ViewBuilder
    func hostImage(_ name: String) -> some View {
        Image(name)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(Color.white, lineWidth: 0))
    }
}

struct BecomeAHostView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BecomeAHostView().previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro Max"))
            BecomeAHostView().previewDevice(PreviewDevice(rawValue: "iPhone SE (3rd generation)"))
                .environment(\.locale, .init(identifier: "es"))
        }
    }
}
