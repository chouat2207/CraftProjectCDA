//
//  DiscoveryViewModel.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 03/08/2026.
//

import Foundation
import SwiftUI

@Observable
class DiscoveryViewModel {
    var userData: [User]
    var artworkData: [Artwork]
    var eventData: [Event]
    
    init() {
        self.userData = users
        self.artworkData = artworks
        self.eventData = events
    }
    
//     notif : comparer date of last login avec date now, prendre toutes les oeuvres entre date of last login et date now
//     if user = artisan && new item, display in news scroll view
//    
//     artwork : comparer preferences user + filtrer pour ignore favoris + date + views du post + rating ?
//    
//     events : comparer preferences user + order by date + order by location
//    
//     Instantiating sections with title + item collection
    var discoverySections: [DiscoverySection] {
        [
            DiscoverySection(title: "Créations qui pourraient vous intéresser", items: artworkData),
            DiscoverySection(title: "Artisans autour de vous", items: userData),
            DiscoverySection(title: "Évènements autour de vous", items: eventData),
        ]
    }
    
    func getItemImage(imageName: String) -> String {
        if imageName == "" {
            return "PlaceholderItem"
        }
        return imageName
    }
    
    var filteredUserListByArtisanProfileActive: [User] {
        userData.filter({$0.artisanProfileID != nil})
    }
}
