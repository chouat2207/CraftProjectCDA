//
//  ArtisanSectionPicker.swift
//  CraftProjectCDA
//
//  Created by Apprenant 85 on 12/08/2026.
//

import SwiftUI

struct ArtisanSectionPicker: View {
    @State var profileViewModel: ProfileViewModel = ProfileViewModel()
    @State var selectedTab = "artworks"
    @State private var showAddArtwork = false
    
    var body: some View {
        VStack {
            HStack {
                Picker("", selection: $selectedTab) {
                    Text("Créations")
                        .tag("artworks")
                    
                    Text("À propos")
                        .tag("aboutme")
                    
                    Text("Journal")
                        .tag("logbook")
                }
                .pickerStyle(.segmented)
                .scaleEffect(1.2)
                .colorMultiply(.mint.opacity(0.7))
                .padding(.horizontal, 40)
            }
            
            if selectedTab == "artworks" {
                ScrollView {
                    LazyVGrid(columns: [
                        GridItem(.flexible()),
                        GridItem(.flexible())
                    ], spacing: 15) {
                        
                        Button {
                            showAddArtwork = true
                        } label: {
                            VStack(spacing: 8) {
                                Image(systemName: "plus.circle.fill")
                                    .font(.system(size: 36))
                                    .foregroundStyle(.mint)
                                
                                Text("Ajouter une création")
                                    .font(.caption)
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.black.opacity(0.7))
                            }
                            .frame(maxWidth: .infinity)
                            .frame(height: 190)
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .strokeBorder(Color.mint.opacity(0.6))
//                                    .background(Color.mint.opacity(0.05))
                            )
                        }

                        ForEach(profileViewModel.filterByArtworks(artistID: .haruto)) { artwork in
                            ArtisanArtworkCard(artworkArtisan: artwork)
                        }
                    }
                    .padding(.horizontal, 15)
                }
            } else if selectedTab == "aboutme" {
                AboutMeView()
            } else if selectedTab == "logbook" {
                LogbookView()
            }
        }
        .sheet(isPresented: $showAddArtwork) {
            NavigationStack {
                EditArtworkView()
            }
        }
    }
}

#Preview {
    ArtisanSectionPicker()
}
