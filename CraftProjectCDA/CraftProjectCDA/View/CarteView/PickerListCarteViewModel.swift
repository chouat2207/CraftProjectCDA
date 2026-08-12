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
    var selection: PickerCarte.Content = .carte
    var showingSheet: Bool = false
    var selectedContent: TypeContenuEnm? = .creation
    var selectedCategory: ArtisanCategoryEnm?
    var selectedDistance: DistanceEnm?
    var selectedArtwork: Artwork?
    var navigateToArtworkDetail: Bool = false


    func openArtworkDetail(_ artwork: Artwork) {

        selectedArtwork = artwork

        navigateToArtworkDetail = true
    }


    var hasActiveFilter: Bool {

        selectedCategory != nil ||
        !searchText.isEmpty
    }

    func filteredArtworks(
        from artworks: [Artwork]) -> [Artwork] {

        artworks.filter { currentArtwork in

            let categoryMatches =
                selectedCategory == nil ||
                currentArtwork.artisanCategory == selectedCategory

            let searchMatches =
                searchText.isEmpty ||
                currentArtwork.name
                    .localizedCaseInsensitiveContains(searchText)


            return categoryMatches && searchMatches
        }
    }

    func filteredArtisans(
        from artisans: [ArtisanProfile],
        artworks: [Artwork]) -> [ArtisanProfile] {
            
        let filteredArtworkList =
            filteredArtworks(from: artworks)
        
        let filteredArtworkIDs = Set(
            filteredArtworkList.map { $0.id }
        )

        return artisans.filter { artisan in
            artisan.artworksID.contains { artworkID in
                filteredArtworkIDs.contains(artworkID)
            }
        }
    }

    func resetFilters() {
        searchText = ""
        selectedContent = .creation
        selectedCategory = nil
        selectedDistance = nil
    }
}
