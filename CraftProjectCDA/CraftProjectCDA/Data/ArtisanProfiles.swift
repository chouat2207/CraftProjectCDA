//
//  ArtisanProfiles.swift
//  CraftProjectCDA
//
//  Created by Apprenant 89 on 30/07/2026.
//

import Foundation
import MapKit

var artisanProfiles = [
    ArtisanProfile(
        isActive: true,
        shopAddress: "C. de Quevedo, 12, 08012, Barcelone, Espagne",
        shopLocation: CLLocationCoordinate2D(latitude: 41.4035, longitude: 2.1603),
        reviewsID: [reviewMessages[0].id],
        totalRating: 5.0,
        artCategory: "Céramique",
        website: URL(string: "https://lisaallegra.fr")!,
        phoneNumber: "",
        logbookID: [],
        artworksID: [artworks[0].id],
        about: "",
        followedByID: [users[0].id]
    )
]
