//
//  OnlineExperiencesView.swift
//  Dittobnb
//
//  Created by Jason Rodriguez on 6/21/22.
//

import SwiftUI

struct OnlineExperiencesView: View {
    
    private let experiences: [(String, LocalizedStringKey)] = [("onlineexp0", "landing.body.online-experiences.live-concert"), ("onlineexp1", "landing.body.online-experiences.learn-photography"), ("onlineexp2", "landing.body.online-experiences.event-support"), ("onlineexp3", "landing.body.online-experiences.stovetop-tricks")]
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack(alignment: .leading) {
                    Text("landing.body.online-experiences.title")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                    experienceCard(experiences[0], CGSize(width: 1, height: 1))
                    HStack(alignment: .top) {
                        experienceCard(experiences[1], CGSize(width: 1, height: 1))
                        experienceCard(experiences[2], CGSize(width: 1, height: 1))
                    }
                    experienceCard(experiences[3], CGSize(width: 2, height: 1))
                }
            }
        }
    }
    
    func experienceCard(_ experience: (String, LocalizedStringKey), _ aspectRatio: CGSize) -> some View {
        VStack {
            Image(experience.0)
                .resizable()
                .aspectRatio(aspectRatio, contentMode: .fit)
            Text(experience.1)
                .font(.headline)
                .frame(maxWidth: .infinity)
                .foregroundColor(Color.white)
                .padding(.bottom)
                .padding(.horizontal)
        }
        .background(Color(red: 0.51, green: 0.51, blue: 0.51))
        .cornerRadius(10)
        .padding()
    }
    
    struct OnlineExperiencesView_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                OnlineExperiencesView().previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro Max"))
                OnlineExperiencesView().previewDevice(PreviewDevice(rawValue: "iPhone SE (3rd generation)"))
                    .environment(\.locale, .init(identifier: "es"))
            }
        }
    }
}
