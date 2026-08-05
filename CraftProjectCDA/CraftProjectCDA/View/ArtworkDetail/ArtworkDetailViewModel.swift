//
//  ArtworkDetailViewModel.swift
//  CraftProjectCDA
//
//  Created by Apprenant 89 on 04/08/2026.
//

import Foundation
@Observable

class ArtworkDetailViewModel {
    var artwork : Artwork
    var isFavorite : Bool = false
    var navigateToMessage : Bool = false
    
    init(artwork: Artwork) {
        self.artwork = artwork
    }
    
    func toggleFavorite() {
        isFavorite.toggle()
    }
    
    func contactArtisan() {
        navigateToMessage = true
    }
}
