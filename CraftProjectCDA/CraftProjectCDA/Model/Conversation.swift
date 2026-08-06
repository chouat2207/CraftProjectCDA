//
//  Untitled.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 05/08/2026.
//

import Foundation

struct Conversation: Identifiable {
    var id: UUID = UUID()
    var userID: UUID
    var peerID: UUID
}
