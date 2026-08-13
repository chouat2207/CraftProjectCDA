//
//  CardList 2.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 11/08/2026.
//

import SwiftUI

struct ListView: View {

    let displayedArtworks: [Artwork]

    // Quand on clique sur une œuvre,
    // on la renvoie à PickerListCarteView
    let onArtworkSelected: (Artwork) -> Void

    private let columns = [GridItem(.flexible(),spacing: 14),GridItem(.flexible(),spacing: 14)]


    var body: some View {

        ScrollView {

            LazyVGrid(columns: columns,spacing: 18) {
                ForEach(displayedArtworks) { artwork in
                    Button {
                        onArtworkSelected(artwork)
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
#Preview {
    ListView(
        displayedArtworks: artworks
    ) 
    { artwork in print(artwork.name)}
}
