//
//  ArtisanListView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 09/08/2026.
//

import SwiftUI

struct ArtisanListView: View {
    @Environment(SharedViewModel.self)
    private var svm
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
                            if let user = svm.usersData.first(
                                where: { user in user.id == artisan.id}) {
                                ArtisanProfileView(user: user)}
                            else {Text("Utilisateur introuvable")
                        }
                        } label : {
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
        .environment(SharedViewModel())
}
