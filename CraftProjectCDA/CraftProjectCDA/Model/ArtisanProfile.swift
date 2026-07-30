//
//  Craftsperson.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 29/07/2026.
//

import Foundation
import MapKit

struct ArtisanProfile {
    var isActive: Bool
    var shopAddress: String
    var shopLocation: CLLocationCoordinate2D
    var reviewsID: [UUID]
    var totalRating: Double
    var artCategory: String
    var website: URL
    var phoneNumber: String
    var logbookID: [UUID]
    var artworksID: [UUID]
    var about: String
    var followedByID: [UUID]
}
