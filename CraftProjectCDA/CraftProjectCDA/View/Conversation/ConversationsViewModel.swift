//
//  ConversationViewModel.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 04/08/2026.
//
import Foundation

@Observable

// login > si pas de mainuserid stocké, on demande de se long

// sinon quand user lance app ou se log, on passe son id qu'on stocke dans le shared vm

// ensuite toute l'app sait qui est le mainuser
class ConversationsViewModel {
    let _users: [User] = users
    let mainUserID: UUID = .haruto
    // Could use an optional here
    var mainUser: User {
        _users.first(where: {$0.id == mainUserID})!
    }
    
    
    
    let conversations: [UserToUserMessage] = userToUserMessages
    var userConversations: [UserToUserMessage] {
        conversations.filter({$0.senderID == mainUserID || $0.receiverID == mainUserID})
    }
    
    var conversationDict: [UUID : [UserToUserMessage]] = [:]
    
    var filteredUserMessages: [UUID : [UserToUserMessage]] {
        for i in 0..<userConversations.count {
            let peerID: UUID = userConversations[i].senderID == mainUserID ? userConversations[i].receiverID : userConversations[i].senderID
            conversationDict[peerID, default: []].append(userConversations[i])
        }
        return conversationDict
    }
}
