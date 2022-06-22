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
    var body: some View {
        VStack(alignment: .leading) {
            titleItem("note.text", "About")
            LazyVGrid(columns: gridColumns) {
                subtitleItem("Company")
                subtitleItem("Press")
                subtitleItem("Blog")
                subtitleItem("Careers")
            }
            titleItem("person.2.fill", "Community")
            LazyVGrid(columns: gridColumns) {
                subtitleItem("Accessibility")
                subtitleItem("Guest community")
                subtitleItem("Invite your friends")
                subtitleItem("Share your stay")
            }
            titleItem("house.fill", "Host")
            LazyVGrid(columns: gridColumns) {
                subtitleItem("Host your own home")
                subtitleItem("Host an experience")
                subtitleItem("Host an online experience")
                subtitleItem("Refer hosts")
                subtitleItem("Host resources")
            }
            titleItem("mail.fill", "Support")
            LazyVGrid(columns: gridColumns) {
                subtitleItem("Help Center")
                subtitleItem("Trust and Safety")
                subtitleItem("Cancellation Options")
            }
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(red: 32/255, green: 32/255, blue: 32/255))
    }
    
    @ViewBuilder
    func titleItem(_ icon: String, _ title: String) -> some View {
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
    func subtitleItem(_ title: String) -> some View {
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
        SideMenuView()
    }
}
