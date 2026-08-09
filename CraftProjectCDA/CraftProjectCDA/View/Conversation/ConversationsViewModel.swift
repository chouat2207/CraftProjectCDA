//
//  ConversationViewModel.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 04/08/2026.
//

import Foundation

@Observable
final class ConversationsViewModel {
    let usersData: [User] = users
    let messagesData: [UserToUserMessage] = userToUserMessages
    let mainUserID: UUID = .haruto
    let messageService: MessageService = MessageService()
    
    var mainUser: User? {
        usersData.first(where: { $0.id == mainUserID })
    }

    // Ca c'est bon
    var messages: [UserToUserMessage] {
        messagesData
            .filter { $0.senderID == mainUserID || $0.receiverID == mainUserID }
            .sorted { $0.postDate < $1.postDate }
    }

    //Ici me faut un Set de peerID
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

    func getLastMessage(from peerID: UUID) -> UserToUserMessage? {
        messages.last(where: {
            $0.senderID == peerID || $0.receiverID == peerID
        })
    }
    
    
    func getAllMessages(from peerID: UUID)
        -> [DirectMessage]
    {
        messages
            .filter(
                {
                    ($0.senderID == mainUserID || $0.receiverID == mainUserID)
                        && ($0.senderID == peerID || $0.receiverID == peerID)
                }
            )
            .map(
                {
                    DirectMessage(
                        senderID: $0.senderID,
                        content: $0.content,
                        isFromMainUser: $0.senderID == mainUserID ? true : false
                    )
                }
            )
    }
    
    
}
