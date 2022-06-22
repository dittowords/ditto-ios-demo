//
//  DittobnbApp.swift
//  Dittobnb
//
//  Created by Jason Rodriguez on 6/21/22.
//

import SwiftUI

@main
struct DittobnbApp: App {
    
    @State var menuOpen: Bool = false
    
    var body: some Scene {
        WindowGroup {
            GeometryReader { geometry in
                NavigationView {
                    ZStack {
                        TabView {
                            ActivitiesView()
                                .tabItem {
                                    Label("mobile.navbar.activities", systemImage: "figure.walk")
                                }
                            BecomeAHostView()
                                .tabItem {
                                    Label("mobile.navbar.host", systemImage: "house")
                                }
                            OnlineExperiencesView()
                                .tabItem {
                                    Label("mobile.navbar.online", systemImage: "globe")
                                }
                            PlacesToStayView()
                                .tabItem {
                                    Label("mobile.navbar.places", systemImage: "building")
                                }
                        }
                        
                        SideMenu(width: geometry.size.width - 50,
                                 isOpen: self.menuOpen,
                                 menuClose: self.openMenu)
                    }
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarItems(leading: Button(action: {
                        openMenu()
                    }, label: {
                        Image(systemName: "line.horizontal.3")
                            .tint(.black)
                    }))
                }
            }
        }
    }
    
    func openMenu() {
        self.menuOpen.toggle()
    }
}


struct SideMenu: View {
    let width: CGFloat
    let isOpen: Bool
    let menuClose: () -> Void
    
    var body: some View {
        HStack {
            SideMenuView()
                .frame(width: self.width)
                .background(Color.white)
                .offset(x: self.isOpen ? 0 : -self.width)
                .animation(.easeInOut(duration: 0.2), value: isOpen)
            
            Spacer()
        }
    }
}
