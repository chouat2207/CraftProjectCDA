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
        shopLocation: CLLocationCoordinate2D(
            latitude: 41.4035,
            longitude: 2.1603
        ),
        reviewsID: [],
        totalRating: 5.0,
        artCategory: "Céramique",
        website: URL(string: "https://lisaallegra.fr")!,
        phoneNumber: "",
        logbookID: [],
        artworksID: [],
        about: "",
        followedByID: []
    ),
    ArtisanProfile(
        isActive: true,
        shopAddress: "C. de Quevedo, 12, 08012, Barcelone, Espagne",
        shopLocation: CLLocationCoordinate2D(latitude: 43.2965, longitude: 5.3698),
        reviewsID: [],
        totalRating: 5.0,
        artCategory: "Céramique",
        website: URL(string: "https://lisaallegra.fr")!,
        phoneNumber: "",
        logbookID: [],
        artworksID: [],
        about: "",
        followedByID: []
    ),
//    ArtisanProfile(
//        isActive: true,
//        shopAddress: "C. de Quevedo, 12, 08012, Barcelone, Espagne",
//        shopLocation: CLLocationCoordinate2D(latitude: 50.7634, longitude: 5.987),
//        reviewsID: [reviewMessages[2].id],
//        totalRating: 5.0,
//        artCategory: "Céramique",
//        website: URL(string: "https://lisaallegra.fr")!,
//        phoneNumber: "",
//        logbookID: [],
//        artworksID: [artworks[2].id],
//        about: "",
//        followedByID: [users[2].id]
//    )
]
