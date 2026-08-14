//
//  ArtisanProfileView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 85 on 05/08/2026.
//

import SwiftUI

struct ArtisanProfileView: View {
    @Environment(SharedViewModel.self) private var sharedVM
    @Environment(\.dismiss) private var dismiss
    @State var profileViewModel: ProfileViewModel = ProfileViewModel()
    @State private var showSettings: Bool = false
    @State private var isShowEdit: Bool = false
    @State private var showAddArtwork : Bool = false
    
    var user: User
    
    private var isCurrentUser: Bool {
        return sharedVM.mainUser?.id == user.id
    }
    
    var body: some View {
        VStack{
            ZStack(){
                CoverImageUserCard(user: user)
                
                VStack{
                    HStack(alignment: .center){
                        
                        Image(user.imageName)
                            .imageModifier(frameWidth: 130, frameHeight: 130, clipShape: Circle())
                            .overlay(Circle()
                                .stroke(.white, lineWidth: 7)
                            )
                        
                        Text(user.pseudonym)
                            .fontWeight(.semibold)
                        Spacer()
                        
                        if isCurrentUser {
                            Button {
                                showSettings = true
                            } label : {
                                SettingsButton()
                            }
                        }
                    }
                }
                .padding(.horizontal,5)
                .offset(y: 70)
            }
            HStack(spacing: 7){
                if isCurrentUser {
                    Button {
                        isShowEdit = true
                    } label : {
                        
                        EditProfileButton()
                    }
                }
            }
            .offset(x: -27,y: -35)
            
            HStack{
                VStack(alignment: .leading){
                    
                    Text("Artisan")
                        .foregroundStyle(.gray)
                        .fontWeight(.semibold)
                    
                    Text(user.description)
                        .italic()
                        .font(.footnote)
                }
                Spacer()
            }
            .padding(.horizontal,15)
            
            HStack{
                if !isCurrentUser {
                    FollowButton()
                }
                
                Spacer()
                // if id == mainuserid
                // on cache
                if !isCurrentUser {
                    MessageButton(user: user)
                }
            }
            .padding()
            
            ArtisanSectionPicker(isUserMainUser: sharedVM.mainUser?.id == user.id ? true : false)
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationDestination(isPresented: $showSettings){
            SettingsAccountView().environment(sharedVM)
        }
        .sheet(isPresented: $isShowEdit) {
            EditProfileView(editProfileViewModel: EditProfileViewModel(), user: user)
                .environment(sharedVM)
        }
    }
}



#Preview {
    ArtisanProfileView(user: users[0])
        .environment(SharedViewModel())
}
