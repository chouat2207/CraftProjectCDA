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
    let artworkData: [Artwork] = artworks
    
    let mainArtisanID: UUID = .haruto
    let mainUserID: UUID = .haruto
    
    var mainUser: User {
        users.first(where: {$0.id == mainUserID})!
    }
    var mainArtisan: ArtisanProfile {
        artisanProfiles.first(where: {$0.id == mainArtisanID})!
    }
    
    var isShowEdit: Bool = false
    var isShowSettings: Bool = false
    
    
    func showEdit() -> EditProfileView{
        if isShowEdit{
            
        }
        return EditProfileView(editProfileViewModel: EditProfileViewModel(), user: mainUser)
    }
    
    func showSettings() -> SettingsAccountView{
        if isShowSettings{
            
        }
        return SettingsAccountView()
    }
    
    var filterByFollower: [User] {
        
        var temp: [User] = []
        for user in userData {
            if mainUser.followingID.contains(where: {$0 == user.id}) {
                temp.append(user)
            }
        }
        return temp
    }
    
    
    func filterByArtworks(artistID: UUID) -> [Artwork] {
        artworkData.filter({$0.artistID == artistID})
    }
}


