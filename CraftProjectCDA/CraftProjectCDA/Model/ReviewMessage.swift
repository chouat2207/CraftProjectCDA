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
    var postDate: String
    var senderID: UUID
    var receiverID: UUID
    
    var rating: Double
}
