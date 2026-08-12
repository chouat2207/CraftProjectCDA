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
    var body: some View {
        
        HStack(){
            Picker("", selection: $selectedTab){
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
            .padding(.horizontal,40)
        }
        
        if selectedTab == "artworks"{
            ScrollView{
                LazyVGrid(columns: [
                    GridItem(.flexible()),
                    GridItem(.flexible())
                ]){
                    ForEach(profileViewModel.filterByArtworks(artistID: .haruto)) {
                        artwork in
                        ArtisanArtworkCard(artworkArtisan: artwork)
                    }
                }
            }
        } else if selectedTab == "aboutme" {
            AboutMeView()
        } else if selectedTab == "logbook" {
            LogbookView()
        }
        
    }
}

#Preview {
    ArtisanSectionPicker()
}
