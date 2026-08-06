//
//  ConversationViewModel.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 04/08/2026.
//

import Foundation

@Observable
class ConversationsViewModel {
    let usersData: [User] = users
    let messagesData: [UserToUserMessage] = userToUserMessages
    let mainUserID: UUID = .haruto

    var mainUser: User? {
        usersData.first(where: { $0.id == mainUserID })
    }

    var messages: [UserToUserMessage] {
        messagesData
            .filter { $0.senderID == mainUserID || $0.receiverID == mainUserID }
            .sorted { $0.postDate < $1.postDate }
    }

    var conversations: [Conversation] {
        var result: [Conversation] = []
        let reversedMessages = messages.reversed()

        for message in messages {
            let peerID = (message.senderID == mainUserID) ? message.receiverID : message.senderID
            
            if !result.contains(where: { $0.peerID == peerID }) {
                let lastMessage = reversedMessages.first { $0.senderID == peerID || $0.receiverID == peerID }
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

    var conversationViewData: [ConversationViewData] {
        conversations.map { conversation in
            let peerName = usersData.first(where: { $0.id == conversation.peerID })?.name ?? "unknown"
            return ConversationViewData(
                peerName: peerName,
                lastMessagePosted: conversation.lastMessagePosted?.content ?? ""
            )
        }
    }

    func getLastMessage(from peerID: UUID) -> UserToUserMessage? {
        messages.last(where: { $0.senderID == peerID || $0.receiverID == peerID })
    }
}
