//
//  PlacesToStayView.swift
//  Dittobnb
//
//  Created by Jason Rodriguez on 6/21/22.
//

import SwiftUI

struct PlacesToStayView: View {
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack(alignment: .leading) {
                    Text("landing.body.live-anywhere.title")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                    ScrollView(.horizontal) {
                        VStack(alignment: .leading) {
                            Text("landing.body.live-anywhere.entire-homes")
                                .font(.headline)
                                .padding(.leading)
                            HStack {
                                houseImage("live_anywhere0", geometry)
                                houseImage("live_anywhere0", geometry)
                                houseImage("live_anywhere0", geometry)
                                houseImage("live_anywhere0", geometry)
                                    .padding(.trailing, 32)
                            }
                        }
                    }
                    ScrollView(.horizontal) {
                        VStack(alignment: .leading) {
                            Text("landing.body.live-anywhere.cabins-and-cottages")
                                .font(.headline)
                                .padding(.leading)
                            HStack {
                                houseImage("live_anywhere1", geometry)
                                houseImage("live_anywhere1", geometry)
                                houseImage("live_anywhere1", geometry)
                                houseImage("live_anywhere1", geometry)
                                    .padding(.trailing, 32)
                            }
                        }
                    }
                    ScrollView(.horizontal) {
                        VStack(alignment: .leading) {
                            Text("landing.body.live-anywhere.unique-stays")
                                .font(.headline)
                                .padding(.leading)
                            HStack {
                                houseImage("live_anywhere2", geometry)
                                houseImage("live_anywhere2", geometry)
                                houseImage("live_anywhere2", geometry)
                                houseImage("live_anywhere2", geometry)
                                    .padding(.trailing, 32)
                            }
                        }
                    }
                    ScrollView(.horizontal) {
                        VStack(alignment: .leading) {
                            Text("landing.body.live-anywhere.pets-welcome")
                                .font(.headline)
                                .padding(.leading)
                            HStack {
                                houseImage("live_anywhere3", geometry)
                                houseImage("live_anywhere3", geometry)
                                houseImage("live_anywhere3", geometry)
                                houseImage("live_anywhere3", geometry)
                                    .padding(.trailing, 32)
                            }
                        }
                    }
                }
            }
        }
    }
    
    @ViewBuilder
    func houseImage(_ name: String, _ geometry: GeometryProxy) -> some View {
        Image(name)
            .resizable()
            .aspectRatio(CGSize(width: 16, height: 9), contentMode: .fit)
            .frame(width: geometry.size.width - 32)
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(Color.white, lineWidth: 0))
            .offset(x: 16)
    }
}

struct PlacesToStayView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlacesToStayView().previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro Max"))
            PlacesToStayView().previewDevice(PreviewDevice(rawValue: "iPhone SE (3rd generation)"))
                .environment(\.locale, .init(identifier: "es"))
        }
    }
}
