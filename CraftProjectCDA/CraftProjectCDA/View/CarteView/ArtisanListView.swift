//
//  ArtisanListView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 09/08/2026.
//

import SwiftUI

struct ArtisanListView: View {
    let filteredArtisans: [ArtisanProfile]
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
                    
                    ForEach(filteredArtisans) { artisan in
                        
                        NavigationLink {
                            
                            Text("Détail de l'artisan")
                        } label: {
                            
                            ArtisanCard(artisan: artisan)
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
    ArtisanListView(filteredArtisans: artisanProfiles)
}
