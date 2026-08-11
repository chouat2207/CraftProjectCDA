//
//  SharedViewModel.swift
//  CraftProjectCDA
//
//  Created by Apprenant 89 on 08/08/2026.
//

import Foundation
import MapKit

@Observable
final class SharedViewModel {
    
    var usersData : [User] = users
    var artworksData : [Artwork] = artworks
    var eventsData : [Event] = events
    var artisanProfilesData : [ArtisanProfile] = artisanProfiles
    var messagesData : [UserToUserMessage] = userToUserMessages
    
    var mainUser : User?
    
    var favoriteArtworkIDs: Set<UUID> = []
    var followedUserIDs: Set<UUID> = []
    
    init(){
        if var haruto = self.usersData.first(where: {$0.id == .haruto}) {
            haruto.artisanProfileID = nil
            self.mainUser = haruto
            self.favoriteArtworkIDs = Set(haruto.favoriteArtworksID)
            self.followedUserIDs = Set(haruto.followingID)
        }
    }
    
    func toggleFavorite(artworkID : UUID) {
        if favoriteArtworkIDs.contains(artworkID) {
            favoriteArtworkIDs.remove(artworkID)
        } else {
            favoriteArtworkIDs.insert(artworkID)
        }
    }
    
    func isFavorite(artworkID : UUID) -> Bool {
        favoriteArtworkIDs.contains(artworkID)
    }
    
    func toggleFollow(userID : UUID) {
        if followedUserIDs.contains(userID) {
            followedUserIDs.remove(userID)
        } else {
            followedUserIDs.insert(userID)
        }
    }
    
    func isFollowing(userID: UUID) -> Bool {
        followedUserIDs.contains(userID)
    }
    
    func sendMessage(to receiverID: UUID, content: String) {
        guard let senderID = mainUser?.id else { return }
        let newMessage = UserToUserMessage(
            id: UUID(),
            content: content,
            postDate: Date(),
            senderID: senderID,
            receiverID: receiverID
        )
        messagesData.append(newMessage)
    }
    
    func updateMainUserProfile(pseudonym: String, description: String, imageName: String?){
        guard var user = mainUser else { return }
        
        user.pseudonym = pseudonym
        user.description = description
        if let newImage = imageName, !newImage.isEmpty {
            user.imageName
             = newImage
        }
        self.mainUser = user
        
        if let index = usersData.firstIndex(where: {$0.id == user.id}){
            usersData[index] = user
        }
    }
    
    func createArtisanProfile(user: User) -> ArtisanProfile {
        // si artisan proflite contient pas de profil avec user id, alors on le crée, si on trouve user id, alors il existe déjà, on fait autre chose
        ArtisanProfile(
            id: user.id,
            isActive: true,
            imageName: user.imageName,
            shopAddress: user.address,
            shopLocation: CLLocationCoordinate2D(latitude: 43.2965, longitude: 5.3698),
            reviewsID: [],
            totalRating: 5.0,
            artCategory: "Verrerie",
            website: URL(string: "https://www.garasu.fr")!,
            phoneNumber: "",
            logbookID: [],
            artworksID: [],
            about: user.description,
            followedByID: []
        )
    }
    
    func becomeArtisan(){
        guard var user = mainUser, user.artisanProfileID == nil else { return }
        
        let newArtisanID = UUID()
        user.artisanProfileID = newArtisanID
        self.mainUser = user
        
        if let index = usersData.firstIndex(where: { $0.id == user.id}){
            usersData[index] = user
        }
        let newArtisanProfile = createArtisanProfile(user: user)
//        let newArtisanProfile = ArtisanProfile(
//            id: newArtisanID,
//            isActive: true,
//            imageName: user.imageName,
//            shopAddress: user.address,
//            shopLocation: CLLocationCoordinate2D(latitude: 43.2965, longitude: 5.3698),
//            reviewsID: [],
//            totalRating: 5.0,
//            artCategory: "Verrerie",
//            website: URL(string: "https://www.garasu.fr")!,
//            phoneNumber: "",
//            logbookID: [],
//            artworksID: [],
//            about: user.description,
//            followedByID: []
//        )
        
        artisanProfilesData.append(newArtisanProfile)
    }
    
}
