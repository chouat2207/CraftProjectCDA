//
//  Untitled.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 05/08/2026.
//

import Foundation

struct ConversationViewData: Identifiable {
    var id: UUID = UUID()
    var peerID: UUID?
    var peerName: String
    var peerImageName: String
    var lastMessagePosted: String
}
