//
//  DirectMessage.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 06/08/2026.
//
import Foundation

struct DirectMessage: Identifiable {
    var id: UUID
    var senderID: UUID
    var senderImageName: String
    var content: String
    var isFromMainUser: Bool
}
