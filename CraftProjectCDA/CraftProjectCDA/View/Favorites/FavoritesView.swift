//
//  FavoritesView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 89 on 11/08/2026.
//

import SwiftUI

struct FavoritesView: View {
    @Environment(SharedViewModel.self) var sharedVM
    
    let columns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]
    
    var favoriteArtworks: [Artwork] {
        sharedVM.artworksData.filter { sharedVM.isFavorite(artworkID: $0.id) }
    }
    
    var body: some View {
        NavigationStack {
            
            if favoriteArtworks.isEmpty {
                
                ContentUnavailableView(
                    "Aucun favori",
                    systemImage: "heart.slash",
                    description: Text("Les œuvres que vous ajoutez en favoris apparaîtront ici.")
                )
                .navigationTitle("Favoris")
                
            } else {
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(favoriteArtworks) { artwork in
                            NavigationLink(destination: ArtworkDetailView(artwork: artwork)) {
                                
                                ListCard(artwork: artwork)
                            }
                            
                            .buttonStyle(.plain)
                        }
                    }
                    .padding(16)
                }
                .navigationTitle("Favoris")
            }
        }
    }
}
#Preview {
    FavoritesView()
        .environment(SharedViewModel())
}
