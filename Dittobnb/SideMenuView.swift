//
//  SideMenuView.swift
//  Dittobnb
//
//  Created by Jason Rodriguez on 6/22/22.
//

import SwiftUI

struct SideMenuView: View {
    
    let gridColumns = [
        GridItem(.fixed(150)),
        GridItem(.fixed(150))
    ]
    
    let width: CGFloat
    let isOpen: Bool
    let menuClose: () -> Void
    
    var body: some View {
        HStack {
            ScrollView {
                VStack(alignment: .leading) {
                    titleItem("note.text", "footer.about.title")
                    LazyVGrid(columns: gridColumns) {
                        subtitleItem("footer.about.blog")
                        subtitleItem("footer.about.press")
                        subtitleItem("footer.about.blog")
                        subtitleItem("footer.about.careers")
                    }
                    titleItem("person.2.fill", "footer.community.title")
                    LazyVGrid(columns: gridColumns) {
                        subtitleItem("footer.community.accessibility")
                        subtitleItem("footer.community.guests")
                        subtitleItem("footer.community.invite")
                        subtitleItem("footer.community.share")
                    }
                    titleItem("house.fill", "footer.host.title")
                    LazyVGrid(columns: gridColumns) {
                        subtitleItem("landing.body.join-hosts.host-home")
                        subtitleItem("landing.body.join-hosts.host-experience")
                        subtitleItem("landing.body.join-hosts.host-online-experience")
                        subtitleItem("footer.host.refer")
                        subtitleItem("footer.host.resources")
                    }
                    titleItem("mail.fill", "footer.support.title")
                    LazyVGrid(columns: gridColumns) {
                        subtitleItem("footer.support.help")
                        subtitleItem("footer.support.trust-safety")
                        subtitleItem("footer.support.cancellation")
                    }
                    Spacer()
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color(red: 32/255, green: 32/255, blue: 32/255))
            }
            .frame(width: self.width)
            .background(Color(red: 32/255, green: 32/255, blue: 32/255))
            .offset(x: self.isOpen ? 0 : -self.width)
            .animation(.easeInOut(duration: 0.2), value: isOpen)
            
            Spacer()
        }
    }
    
    @ViewBuilder
    func titleItem(_ icon: String, _ title: LocalizedStringKey) -> some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.gray)
                .imageScale(.large)
            Text(title)
                .foregroundColor(.gray)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.top)
    }
    
    @ViewBuilder
    func subtitleItem(_ title: LocalizedStringKey) -> some View {
        HStack {
            Text(title)
                .foregroundColor(.gray)
                .font(.headline)
                .padding(.top)
            Spacer()
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SideMenuView(width: 170, isOpen: true, menuClose: {}).previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro Max"))
            SideMenuView(width: 170, isOpen: true, menuClose: {}).previewDevice(PreviewDevice(rawValue: "iPhone SE (3rd generation)"))
                .environment(\.locale, .init(identifier: "es"))
        }
    }
}
