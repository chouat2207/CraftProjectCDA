//
//  DirectMessageViewModel.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 05/08/2026.
//
import Foundation

@Observable
final class DirectMessageViewModel {
    private let peerID: UUID
    private let messageService: MessageService

    init(peerID: UUID, messageService: MessageService) {
        self.peerID = peerID
        self.messageService = messageService
    }

    var mainUserID: UUID { messageService.mainUserID }

    var directMessages: [DirectMessage] {
        messageService.messageData
            .filter {
                ($0.senderID == mainUserID && $0.receiverID == peerID)
                    || ($0.senderID == peerID && $0.receiverID == mainUserID)
            }
            .sorted { $0.postDate < $1.postDate }
            .map {message in
                DirectMessage(
                    id: message.id,
                    senderID: message.senderID,
                    senderImageName:
                        messageService.userData.first(where: {$0.id == message.senderID})?.imageName ?? "PlaceholderPortrait",
                    date: message.postDate,
                    content: message.content,
                    isFromMainUser: message.senderID == mainUserID
                )
            }
    }

    func postMessage(content: String) {
        messageService.postMessage(from: mainUserID, to: peerID, content: content)
    }
}
