//
//  DirectMessageViewModel.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 05/08/2026.
//
import Foundation

@Observable
class DirectMessageViewModel {
    var messagesData: [UserToUserMessage] = userToUserMessages
    
    func postMessage(message: String) {
        messagesData.append(UserToUserMessage(id: UUID(), content: message, postDate: Date(), senderID: .marie, receiverID: .amande))
    }
}
