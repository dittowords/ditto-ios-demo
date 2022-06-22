//
//  OnlineExperiencesView.swift
//  Dittobnb
//
//  Created by Jason Rodriguez on 6/21/22.
//

import SwiftUI

struct OnlineExperiencesView: View {
    
    private let experiences = [("onlineexp0", "Attend a live personal concert by local indie bands"), ("onlineexp1", "Learn photography and photo editing from industry pros"), ("onlineexp2", "Event Support"), ("onlineexp3", "Experience stovetop tricks from famed hibachi artists")]
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Online Experiences")
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
    
    func experienceCard(_ experience: (String, String), _ aspectRatio: CGSize) -> some View {
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
            OnlineExperiencesView()
        }
    }
}
