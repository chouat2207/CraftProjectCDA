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
    
    var editChanges: [User] = []
    
    
    func saveEditChanges (user: User) -> ProfileView{
        editChanges.append(user)
        return ProfileView(profileViewModel: ProfileViewModel(), editProfileViewModel: EditProfileViewModel())
    }
    
}
