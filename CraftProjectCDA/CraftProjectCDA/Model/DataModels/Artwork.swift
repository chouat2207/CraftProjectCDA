//
//  Message.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 29/07/2026.
//

import Foundation

struct Artwork: Identifiable, DisplayableItem {
    var id: UUID = UUID()
    var name: String
    var imageName: String
    var imageArtisan : String
    var artCategory: String
    let artisanCategory: ArtisanCategoryEnm
    var description: String
    var details: String
    var artistID: UUID
    var createdDate: Date = Date()
}


