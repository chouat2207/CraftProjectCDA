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
    
    let mainArtisanID: UUID = .eloise
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
    
    func showSettings(){
        isShowSettings = true
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
    
//    var filterByReviews: [User] {
//        var ownReview: [User] = []
//        for user in userData {
//            if mainUser.reviewsID.contains(where: {$0 == user.id}) {
//                ownReview.append(user)
//            }
//        }
//        return ownReview
//    }
    
    var filterByArtworks: [ArtisanProfile]{
        var ownArtwork: [ArtisanProfile] = []
        for artisanProfile in artisansData {
            if mainArtisan.artworksID.contains(where: {$0 == artisanProfile.id}) {
                ownArtwork.append(artisanProfile)
            }
           
           // on veut un tableau d'artworks dans artisanprofile , pour chaque id, on retourne l'artwork correspondant à l'id de l'artisan
        }
        return ownArtwork
    }
}


