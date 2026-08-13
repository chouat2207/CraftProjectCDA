//
//  CarteView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 31/07/2026.
//

import SwiftUI
import MapKit

struct CarteView: View {
    @Environment(SharedViewModel.self)
    private var svm
    
    let displayedArtisans: [ArtisanProfile]
    let hasActiveFilter: Bool
    @State private var selectedArtisan: ArtisanProfile?

    @State private var position: MapCameraPosition = .userLocation(
       // true  → suit position + direction du téléphone
      //  false → suit surtout la position, sans tourner avec le téléphone
        followsHeading: false,
        fallback: .automatic
    )

    var body: some View {

        Map(position: $position) {
            UserAnnotation()
            ForEach(displayedArtisans) { artisan in
                let coordinate = artisan.shopLocation
                
                let imageName = artisan.imageName
                Annotation(
                    "", coordinate: coordinate) {
                    Button { selectedArtisan = artisan} 
                    label: {
                           ArtisanMapAnnotation(
                            imageName: imageName)}
                    .buttonStyle(.plain)
                    
                }}
        }
        .ignoresSafeArea()
        .onChange(of: displayedArtisans.map { $0.id }) {
            updateMapPosition()
        }
        
        .sheet(item: $selectedArtisan) { artisan in
                Group {
                    if let user = svm.usersData.first(
                        where: { user in
                        user.id == artisan.id
                        })
                    {
                    ArtisanProfileView(user: user)
                    } else {
                        Text("Utilisateur introuvable")}
                }
                .presentationDetents([.medium,.large])
                .presentationDragIndicator(.visible)
            }
        }

    private func updateMapPosition() {
        if hasActiveFilter {
            position = .automatic
        } else {
            position = .userLocation(
                followsHeading: false,
                fallback: .automatic
            )
        }
    }
}
#Preview {
    CarteView(displayedArtisans: artisanProfiles, hasActiveFilter: false)
        .environment(SharedViewModel())
}
