//
//  DiscoveryViewModel.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 03/08/2026.
//

import Foundation

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
//     events : comparer preferences user + order by date
    
}
