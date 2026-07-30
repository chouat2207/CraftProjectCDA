//
//  Message.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 29/07/2026.
//

import Foundation

struct Message: Identifiable {
    var id: UUID = UUID()
    var content: String
    var date: Date
    var senderID: UUID
    var receiverID: UUID
    var itemID: UUID
}
