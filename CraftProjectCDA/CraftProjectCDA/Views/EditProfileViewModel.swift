//
//  EditProfileViewModel.swift
//  CraftProjectCDA
//
//  Created by Apprenant 85 on 05/08/2026.
//

import Foundation
import SwiftUI
@Observable

class EditProfileViewModel{
    
    var saveEditChanges: [User] = []
//    @State var pseudoInput = ""
//    @State var bioInput = ""
//    @State var siteInput = ""
    
    
    func savingEditing (user: User){
        saveEditChanges.append(user)
    }
}
