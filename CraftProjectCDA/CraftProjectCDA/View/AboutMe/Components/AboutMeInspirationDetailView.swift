//
//  AboutMeInspirationDetailView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 85 on 08/08/2026.
//

import SwiftUI

struct AboutMeInspirationDetailView: View {
    var artwork : Artwork 
    var body: some View {
        ZStack {
            Rectangle()
                
                .cornerRadius(10)
                .foregroundStyle(.white)
            VStack {
                Image(artwork.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 180, height: 140)
                    .clipShape(UnevenRoundedRectangle(topLeadingRadius: 10, topTrailingRadius: 10))
                Spacer()
                HStack {
                    Text(artwork.name)
                        .font(.caption)
                    Spacer()
                }
                
                .padding(.init(top: 5, leading: 10, bottom: 5, trailing: 0))
                Spacer()
            }
        }
        .padding()
        .frame(width: 180, height: 190)
        .shadow(radius: 2)
    }
}

#Preview {
    AboutMeInspirationDetailView(artwork: artworks[9])
}
