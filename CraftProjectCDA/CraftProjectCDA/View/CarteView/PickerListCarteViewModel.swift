//
//  PickerListCarteViewModel.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 11/08/2026.
//

import Foundation
import Observation

@Observable
final class PickerListCarteViewModel {

    var searchText: String = ""
    var selection: PickerCarte.Content = .liste
    var showingSheet: Bool = false
    var selectedContent: TypeContenuEnm? = .creation

    var selectedCategory: ArtisanCategoryEnm?

    var selectedDistance: DistanceEnm?


    // Navigation

    var selectedArtwork: Artwork?

    var navigateToArtworkDetail: Bool = false


    func openArtworkDetail(_ artwork: Artwork) {

        selectedArtwork = artwork

        navigateToArtworkDetail = true
    }


    // Vérifier filtre actif

    var hasActiveFilter: Bool {

        selectedCategory != nil ||
        !searchText.isEmpty
    }


    // Filtrer les créations

    func filteredArtworks(
        from artworks: [Artwork]
    ) -> [Artwork] {

        artworks.filter { currentArtwork in

            // Filtre catégorie
            let categoryMatches =
                selectedCategory == nil ||
                currentArtwork.artisanCategory == selectedCategory


            // Recherche
            let searchMatches =
                searchText.isEmpty ||
                currentArtwork.name
                    .localizedCaseInsensitiveContains(searchText)


            return categoryMatches && searchMatches
        }
    }

    // Filtrer les artisans

    func filteredArtisans(
        from artisans: [ArtisanProfile],
        artworks: [Artwork]
    ) -> [ArtisanProfile] {

        // Les créations restantes après filtre
        let filteredArtworkList =
            filteredArtworks(from: artworks)


        // On récupère leurs ID
        let filteredArtworkIDs = Set(
            filteredArtworkList.map { $0.id }
        )


        // On garde les artisans qui ont au moins une création filtrée
        return artisans.filter { artisan in

            artisan.artworksID.contains { artworkID in

                filteredArtworkIDs.contains(artworkID)
            }
        }
    }

    //Reset

    func resetFilters() {

        searchText = ""

        selectedContent = .creation

        selectedCategory = nil

        selectedDistance = nil
    }
}
