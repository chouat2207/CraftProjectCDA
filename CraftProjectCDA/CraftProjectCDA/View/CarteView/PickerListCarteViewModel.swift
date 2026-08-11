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

    // MARK: - Recherche
    var searchText: String = ""

    // MARK: - Liste / Carte
    var selection: PickerCarte.Content = .liste

    // MARK: - Sheet
    var showingSheet: Bool = false

    // MARK: - Filtres
    var selectedContent: TypeContenuEnm? = .creation

    var selectedCategory: ArtisanCategoryEnm?

    var selectedDistance: DistanceEnm?


    // MARK: - Vérifier s'il y a un filtre actif
    var hasActiveFilter: Bool {

        selectedCategory != nil ||
        !searchText.isEmpty
    }


    // MARK: - Filtrer les créations
    func filteredArtworks(
        from artworks: [Artwork]
    ) -> [Artwork] {

        artworks.filter { currentArtwork in

            // Filtre catégorie
            let categoryMatches =
                selectedCategory == nil ||
                currentArtwork.artisanCategory == selectedCategory


            // Filtre recherche
            let searchMatches =
                searchText.isEmpty ||
                currentArtwork.name
                    .localizedCaseInsensitiveContains(
                        searchText
                    )


            return categoryMatches &&
                   searchMatches
        }
    }


    // MARK: - Filtrer les artisans
    func filteredArtisans(
        from artisans: [ArtisanProfile],
        artworks: [Artwork]
    ) -> [ArtisanProfile] {

        // On récupère d'abord les œuvres filtrées
        let filteredArtworksList =
            filteredArtworks(
                from: artworks
            )


        // On récupère leurs ID
        let filteredArtworkIDs = Set(
            filteredArtworksList.map {
                $0.id
            }
        )


        // On garde les artisans qui possèdent
        // au moins une œuvre filtrée
        return artisans.filter { artisan in

            artisan.artworksID.contains { artworkID in

                filteredArtworkIDs.contains(
                    artworkID
                )
            }
        }
    }


    // MARK: - Reset
    func resetFilters() {

        searchText = ""

        selectedContent = .creation

        selectedCategory = nil

        selectedDistance = nil
    }
}
