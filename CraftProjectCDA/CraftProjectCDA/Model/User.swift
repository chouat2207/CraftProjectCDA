//
//  User.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 29/07/2026.
//

import Foundation
import MapKit


struct User: Identifiable, DisplayableItem {
    var id: UUID
    var firstName: String
    var lastName: String
    var name: String
    var pseudonym: String
    var imageName: String
    var joinedDate: String
    var artisanProfileID: UUID?
    var address: String
    var city: String
    var description: String
    var favoriteArtworksID: [UUID]
    
    // Array of artisans the user is following
    var followingID: [UUID]
    
    var reviewsID: [UUID]
    
    
    // Made custom init to conform to DisplayableItem protocol
    init(id: UUID, firstName: String, lastName: String, pseudonym: String, imageName: String, joinedDate: String, artisanProfileID: UUID? = nil, address: String, city: String, description: String, favoriteArtworksID: [UUID], followingID: [UUID], reviewsID: [UUID]) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.name = firstName + " " + lastName
        self.pseudonym = pseudonym
        self.imageName = imageName
        self.joinedDate = joinedDate
        self.artisanProfileID = artisanProfileID
        self.address = address
        self.city = city
        self.description = description
        self.favoriteArtworksID = favoriteArtworksID
        self.followingID = followingID
        self.reviewsID = reviewsID
    }
    
}
