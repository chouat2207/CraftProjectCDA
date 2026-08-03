//
//  CardList.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 01/08/2026.
//

import SwiftUI

struct ListCard: View {

    let user: User

    private var artwork: Artwork {
        Artwork(
            name: "Louis Vuitton",
            imageName: "HaeghenAmandeLouisVuitton",
            artCategory: "Céramique",
            description: """
            À l’image d’un collectionneur,
            qui célèbre le passé, et d’un peintre qui dessine l’avenir.
            """,
            details: "",
            artistID: user.id
        )
    }
    var body: some View {
           VStack(alignment: .leading, spacing: 0) {
               ZStack(alignment: .bottomLeading) {
                   Image(artwork.imageName)
                       .resizable()
                       .scaledToFill()
                       .frame(maxWidth: .infinity)
                       .frame(height: 145)
                       .clipped()

                   Image("HaeghenAmandeLouisVuitton")
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
                   .padding(.top, 25)
                   .padding(.horizontal, 12)
                   .padding(.bottom, 12)
           }
           .frame(maxWidth: 170)
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
    ListCard(user: users[1])
//        .frame(width: 170)
//        .padding()
}
