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
                    Text("Join dozens of hosts on our site")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom)
                    hostImage("hosts0")
                    hostText("Host your own home")
                    hostImage("hosts1")
                    hostText("Host an experience")
                    hostImage("hosts2")
                    hostText("Host an online experience")
                }
                .padding(.horizontal)
            }
        }
    }
    
    @ViewBuilder
    func hostText(_ text: String) -> some View {
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
        BecomeAHostView()
    }
}
