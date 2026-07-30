//
//  pMessage.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 30/07/2026.
//

import Foundation

protocol Message {
    var id: UUID { get set }
    var content: String { get set }
    var postDate: Date { get set }
    var senderID: UUID { get set }
    var receiverID: UUID { get set }
}
