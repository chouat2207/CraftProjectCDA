//
//  ConversationsViewModel.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 05/08/2026.
//

import Foundation

@Observable
final class ConversationsViewModel {
    let usersData: [User] = users
    private let messageService: MessageService

    init(messageService: MessageService) {
        self.messageService = messageService
    }

    var mainUserID: UUID { messageService.mainUserID }

    var mainUser: User? {
        usersData.first(where: { $0.id == mainUserID })
    }

    var messages: [UserToUserMessage] {
        messageService.messageData
            .filter { $0.senderID == mainUserID || $0.receiverID == mainUserID }
            .sorted { $0.postDate < $1.postDate }
    }

    var peerIDs: Set<UUID> {
        Set(
            messages.map({
                $0.senderID == mainUserID ? $0.receiverID : $0.senderID
            })
        )
    }

    var conversations: [Conversation] {
        var result: [Conversation] = []
        let reversedMessages = messages.reversed()

        for message in messages {
            let peerID =
                (message.senderID == mainUserID)
                ? message.receiverID : message.senderID

            if !result.contains(where: { $0.peerID == peerID }) {
                let lastMessage = reversedMessages.first {
                    $0.senderID == peerID || $0.receiverID == peerID
                }
                result.append(
                    Conversation(
                        userID: mainUserID,
                        peerID: peerID,
                        lastMessagePosted: lastMessage
                    )
                )
            }
        }

        return result
    }
    
    func getPeerName(peerID: UUID) -> String {
            usersData.first(where: { $0.id == peerID })?.name ?? "unknown"
    }

    var conversationViewData: [ConversationViewData] {
        conversations.map {
            ConversationViewData(
                peerID: $0.peerID,
                peerName: getPeerName(peerID: $0.peerID),
                lastMessagePosted: $0.lastMessagePosted?.content ?? ""
            )
        }
    }

}
