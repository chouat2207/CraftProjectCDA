//
//  CardList.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 01/08/2026.
//
import SwiftUI

struct ListCard: View {

    let artwork: Artwork

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack(alignment: .bottomLeading) {
                
                // Image de l’œuvre
                Rectangle()
                                   .fill(.clear)
                                   .frame(height: 135)
                                   .overlay {
                                       Image(artwork.imageName)
                                           .resizable()
                                           .scaledToFill()
                                   }
                                   .clipped()

                // Image de l’artisan
                Image(artwork.imageArtisan)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 42, height: 42)
                    .clipShape(Circle())
                    .overlay {
                        Circle()
                            .stroke(.white, lineWidth: 2)
                    }
                    .offset(x: 12, y: 20)
            }

            Text(artwork.name)
                .font(.system(size: 14, weight: .light))
                .lineLimit(1)
                .padding(.top, 26)
                .padding(.horizontal, 12)
                .padding(.bottom, 12)
        }
        .frame(maxWidth: .infinity)
        .background(.white)
        .clipShape(
            RoundedRectangle(
                cornerRadius: 16,
                style: .continuous
            )
        )
        .shadow(
            color: .black.opacity(0.12),
            radius: 4,
            x: 0,
            y: 2
        )
    }
}

#Preview {
    ListCard(artwork: artworks[3])
        .frame(width: 170)
        .padding()
}
