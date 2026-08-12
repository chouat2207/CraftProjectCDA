//
//  ArtisanArtworkCard.swift
//  CraftProjectCDA
//
//  Created by Apprenant 85 on 12/08/2026.
//

import SwiftUI

struct ArtisanArtworkCard: View {

@State var profileViewModel: ProfileViewModel = ProfileViewModel()
let artworkArtisan: Artwork
    
    var body: some View {
        
            ZStack{
                Rectangle()
                    .cornerRadius(10)
                    .foregroundStyle(.white)
                VStack {
                    Image(artworkArtisan.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 180, height: 140)
                        .clipShape(UnevenRoundedRectangle(topLeadingRadius: 10, topTrailingRadius: 10))
                    
                    Spacer()
                    
                    HStack {
                        Text("\(artworkArtisan.name)")
                            .font(.caption)
                        Spacer()
                    }
                    
                    .padding(.init(top: 5, leading: 10, bottom: 5, trailing: 0))
                    Spacer()
                }
            }
            .frame(width: 180, height: 190)
            .shadow(radius: 2)
            .padding(8)
        }
    }
#Preview {
    ArtisanArtworkCard(artworkArtisan: artworks[0])
}
