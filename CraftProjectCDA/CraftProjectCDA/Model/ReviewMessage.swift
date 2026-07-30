//
//  Untitled.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 28/07/2026.
//

import Foundation

struct ReviewMessage: Identifiable, Message {
    var id: UUID = UUID()
    var content: String
    var date: Date
    var rating: Double
    var reviewer: UUID
    var artist: UUID
}
