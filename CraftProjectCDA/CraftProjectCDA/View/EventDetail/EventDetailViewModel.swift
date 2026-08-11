//
//  EventDetailViewModel.swift
//  CraftProjectCDA
//
//  Created by Apprenant 89 on 11/08/2026.
//

import Foundation
@Observable

class EventDetailViewModel {
   
    var event : Event = events[0]
    var navigateToMessage : Bool = false

    var author: User {
        users.first(where: { $0.id == event.authorID }) ?? users[0]
    }
    
    func contactAuthor() {
        navigateToMessage = true
    }
}
