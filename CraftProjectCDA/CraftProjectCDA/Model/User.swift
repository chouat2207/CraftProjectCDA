//
//  User.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 29/07/2026.
//

import Foundation
import MapKit

struct User: Identifiable {
    var id: UUID = UUID()
    var firstName: String
    var lastName: String
    var pseudonym: String
    var imageName: String
    var joinedDate: String
    var artisanProfile: ArtisanProfile?
    var address: String
    var city: String
    var description: String
//    var favoriteArtworksID: [UUID]
//    
//    // Array of artisans the user is following
//    var followingID: [UUID]
//    
//    var reviewsID: [UUID]
}
