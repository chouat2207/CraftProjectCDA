//
//  EventsViewModel.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 11/08/2026.
//

import Foundation
import Observation

@Observable
final class EventsViewModel {

    var searchText = ""

    var showingSheet = false

    var selectedContent: TypeContenuEnm? = .evenement

    var selectedCategory: ArtisanCategoryEnm?

    var selectedDistance: DistanceEnm?


    func filteredEvents(from events: [Event]) -> [Event] {

        events.filter { event in

            // Recherche
            let searchMatches =
                searchText.isEmpty ||
                event.name
                    .localizedCaseInsensitiveContains(searchText)

            // Catégorie
            let categoryMatches =
                selectedCategory == nil ||
                event.artCategory == selectedCategory?.rawValue


            return searchMatches &&
                   categoryMatches
        }
    }


    func resetFilters() {
        searchText = ""
        selectedContent = nil
        selectedCategory = nil
        selectedDistance = nil
    }
}
