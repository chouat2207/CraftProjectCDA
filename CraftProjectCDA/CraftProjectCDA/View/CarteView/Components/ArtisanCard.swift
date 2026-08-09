//
//  ArtisanCard.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 09/08/2026.
//

import SwiftUI

struct ArtisanCard: View {

    let artisan: ArtisanProfile
        //$0 représente chaque élément du tableau users, un par un
        //comme : users.first(where: { user in user.id == artisan.id
    var matchedUser: User? {
        users.first { user in
            user.id == artisan.id
        }
    }
    var body: some View {
            VStack(spacing: 10) {
                
                Image(artisan.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 140)
                    .frame(maxWidth: .infinity)
                    .clipped()
                
                Text(
                    matchedUser.map {
                        "\($0.firstName) \($0.lastName)"
                    } ?? "Artisan"
                )
                .font(.headline)
                .lineLimit(1)
            }
            .frame(maxWidth: .infinity)
            .background(.white)
            .clipShape(
                RoundedRectangle(
                    cornerRadius: 16
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
    ArtisanCard(artisan: artisanProfiles[0])
}
