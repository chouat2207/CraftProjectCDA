//
//  Message.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 29/07/2026.
//

import Foundation
import MapKit

struct Event: Identifiable, DisplayableItem {
    var id: UUID = UUID()
    var name: String
    var imageName: String
    
    var postDate: String
    var participantsID: [UUID]
    var authorID: UUID
    
    var description: String
    var artCategory: String
    
    var adress: String
    var location: CLLocationCoordinate2D
    var startingDate: String
    var endingDate: String
}
