//
//  ArtworkDetailViewModel.swift
//  CraftProjectCDA
//
//  Created by Apprenant 89 on 04/08/2026.
//

import Foundation
import PhotosUI
@Observable

class ArtworkDetailViewModel {
   
    // appeler protocol displayable Item
    //  var items: [any DisplayableItem & Identifiable]
    var artwork : Artwork
    var navigateToMessage : Bool = false
    
//    var isFavorite : Bool = false
    
//    let _users : [User] = users
    let mainUserID : UUID = .haruto
    
    var mainUser : User {
        users.first(where: { $0.id == mainUserID }) ?? users[0]
    }
    
    var artisan : User {
        users.first(where: { $0.id == artwork.artistID }) ?? users[0]
    }
    
    var isFavorite : Bool {
        mainUser.favoriteArtworksID.contains(artwork.id)
    }
    
    init(artwork: Artwork) {
        self.artwork = artwork
    }
    
    func toggleFavorite() {
        guard let index = users.firstIndex(where: {$0.id == mainUserID}) else { return }
        if let artworkIndex = users[index].favoriteArtworksID.firstIndex(of:artwork.id) {
            users[index].favoriteArtworksID.remove(at: artworkIndex)
//        isFavorite = false
        } else {
            users[index].favoriteArtworksID.append(artwork.id)
//            isFavorite = true
        }
       artwork = artwork
    }
    
    func contactArtisan() {
        navigateToMessage = true
    }
}

/*
 func toggleFavorite() {
 if let index = currentUser.favoriteArtworksID.firstIndex(of: artwork.id){
 currentUser.favoriteArtworksID.remove(at: index)
 } else {
 currentUser.favoriteArtworksID.append(artwork.id)
 }
 }
 */
