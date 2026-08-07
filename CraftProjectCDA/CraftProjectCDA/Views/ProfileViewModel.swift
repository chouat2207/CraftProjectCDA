//
//  ProfileViewModel.swift
//  CraftProjectCDA
//
//  Created by Apprenant 85 on 05/08/2026.
//
import Foundation
import SwiftUI

@Observable

class ProfileViewModel{
    var user: User
    var isShowEdit: Bool = false
    var isShowSettings: Bool = false
    
    init(user: User) {
        self.user = user
    }
    
    func showEdit() -> EditProfileView{
        if isShowEdit{
            
        }
        return EditProfileView(editProfileViewModel: EditProfileViewModel(), user: users[5])
      
    }
    
    func showSettings(){
        isShowSettings = true
    }
    
}


