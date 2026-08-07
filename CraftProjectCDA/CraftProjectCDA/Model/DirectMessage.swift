//
//  DirectMessage.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 06/08/2026.
//
import Foundation

struct DirectMessage: Identifiable {
    var id: UUID = UUID()
    var senderID: UUID
    var messageContent: String
}
