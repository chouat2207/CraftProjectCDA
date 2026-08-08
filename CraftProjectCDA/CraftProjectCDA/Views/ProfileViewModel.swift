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
    let userData: [User] = users
    let artisansData: [ArtisanProfile] = artisanProfiles
    let mainUserID: UUID = .haruto
    
    // chercher id artisan, filtrer Artisanprofiles,
    
    // Could use an optional here
    var mainUser: User {
        users.first(where: {$0.id == mainUserID})!
    }
    var isShowEdit: Bool = false
    var isShowSettings: Bool = false
    
    
    func showEdit() -> EditProfileView{
        if isShowEdit{
            
        }
        return EditProfileView(editProfileViewModel: EditProfileViewModel(), user: users[5])
//        EditProfileView(editProfileViewModel: EditProfileViewModel())
    }
    
    func showSettings(){
        isShowSettings = true
    }
    
    var filterByFollower: [User] {
        
        // on a un tableau de foloowers dans mainuser
       // userData.map({user in user.id == mainUser.followingID})
        // on veut pour chaque id du tableau, retourner un user correspondant a l'id
        var temp: [User] = []
        for user in userData {
            if mainUser.followingID.contains(where: {$0 == user.id}) {
                temp.append(user)
            }
        }
        return temp
    }
    
}


