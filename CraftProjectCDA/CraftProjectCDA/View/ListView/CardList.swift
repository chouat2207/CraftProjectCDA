//
//  CardList.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 03/08/2026.
//

import SwiftUI

struct CardList: View {
    
    let displayedArtworks: [Artwork]
    private let columns = [
        GridItem(.flexible(), spacing: 14),
        GridItem(.flexible(), spacing: 14)
    ]
    var body: some View {

           NavigationStack {

               ScrollView {

                   LazyVGrid(
                       columns: columns,
                       spacing: 18
                   ) {

                       ForEach(displayedArtworks) { artwork in

                           NavigationLink {
                               
//                               ArtworkDetailView(
//                                   viewModel: ArtworkDetailViewModel(
//                                       artwork: artwork
//                                   )
//                               )

                           } label: {

                               ListCard(artwork: artwork)
                           }
                           .buttonStyle(.plain)
                       }
                   }
                   .padding(.horizontal, 16)
                   .padding(.vertical, 12)
               }
           }
       }
}

#Preview {
    CardList(displayedArtworks: artworks)
}
