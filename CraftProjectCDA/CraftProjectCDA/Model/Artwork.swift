//
//  Message.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 29/07/2026.
//

import Foundation

struct Artwork: Identifiable {
    var id: UUID = UUID()
    var name: String
    var imageName: String
    var artCategory: String
    var description: String
    var details: String
    var artistID: UUID
}
