//
//  ContentView.swift
//  Dittobnb
//
//  Created by Jason Rodriguez on 6/21/22.
//

import SwiftUI

struct ActivitiesView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .topLeading) {
                ZStack {
                    Image("hero")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .edgesIgnoringSafeArea(.top)
                        .frame(width: geometry.size.width)
                    VStack(alignment: .leading) {
                        Text("landing.hero.title")
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .foregroundColor(.white)
                            .padding(.horizontal)
                        
                        Text("landing.hero.subtitle")
                            .font(.title2)
                            .fontWeight(.black)
                            .foregroundColor(.white)
                            .padding(.top, 1)
                            .padding(.horizontal)
                        
                        Button("landing.hero.cta") {
                            print("EXPLORE")
                        }
                        .font(.headline)
                        .padding()
                        .background(.white)
                        .foregroundColor(.black)
                        .cornerRadius(8)
                        .padding(.horizontal)
                    }
                    .padding(.top, 50)
                    
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
                Image("logo")
                    .resizable()
                    .aspectRatio(CGSize(width: 29, height: 6), contentMode: .fit)
                    .frame(width: geometry.size.width / 2)
                    .padding()
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ActivitiesView().previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro Max"))
            ActivitiesView().previewDevice(PreviewDevice(rawValue: "iPhone SE (3rd generation)"))
                .environment(\.locale, .init(identifier: "es"))
        }
        
    }
}
