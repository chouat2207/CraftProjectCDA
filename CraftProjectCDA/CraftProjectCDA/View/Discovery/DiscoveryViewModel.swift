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
    
    // Need to refactor to use sharedVM
    var userData: [User]
    var artworkData: [Artwork]
    var eventData: [Event]
    
    init() {
        self.userData = users
        self.artworkData = artworks
        self.eventData = events
    }
    
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
    
    func activeFollowedUsers(for user: User) -> [User] {
        users.filter({user.followingID.contains($0.id)})

    }
}
