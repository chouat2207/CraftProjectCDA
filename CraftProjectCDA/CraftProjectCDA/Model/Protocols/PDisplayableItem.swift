//
//  PDisplayableItem.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 03/08/2026.
//

import Foundation


// Made this protocol to enable mixing different datas using the "any" keyword and display them in a View
protocol DisplayableItem {
    // Added id getter so a View's ForEach know where to look for when we pass it "any Type" data
    var id: UUID { get }
    var name: String { get set }
    var imageName: String { get set }
}
