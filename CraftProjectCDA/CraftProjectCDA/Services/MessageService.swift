//
//  MessageService.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 09/08/2026.
//

import Foundation

@Observable
class MessageService {
    var messageData: [UserToUserMessage] = userToUserMessages
    
    func postMessage (from senderID: UUID, to receiverID : UUID, content : String) {
    let newMessage = UserToUserMessage (
    id : UUID(),
    content : content,
    postDate : Date(),
    senderID : senderID,
    receiverID: receiverID
    )
    userToUserMessages.append(newMessage)
    }
}
