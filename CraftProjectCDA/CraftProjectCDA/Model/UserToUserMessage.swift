//
//  Message.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 29/07/2026.
//

import Foundation

struct UserToUserMessage: Identifiable {
    var id: UUID
    var content: String
    var postDate: String
    var senderID: UUID
    var receiverID: UUID
    
    var itemID: UUID?
}
