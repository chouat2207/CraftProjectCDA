//
//  ProfileView.swift
//
//
//  Created by Apprenant 85 on 31/07/2026.
//

import SwiftUI

struct ProfileView: View {
    @Environment(SharedViewModel.self) var sharedVM
    @State var profileViewModel: ProfileViewModel = ProfileViewModel()
    var user: User
    
    var body: some View {
        
        NavigationStack{
            
            VStack{
                ZStack{
                    Image(user.bannerName)
                        .imageModifier(frameWidth: 410, frameHeight: 230, clipShape: Rectangle())
                        .ignoresSafeArea()
                    
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
                            SettingsButton()
                        }
                    }
                    .padding(.horizontal,5)
                    .offset(y: 70)
                }
                VStack(){
                    EditProfileButton()
                }
                .offset(x: -27,y: -35)
            }
            
            HStack{
                VStack(alignment: .leading){
                    
                    Text("Utilisateur")
                        .foregroundStyle(.gray)
                        .fontWeight(.semibold)
                    
                    Text(user.description)
                        .italic()
                        .font(.footnote)
                }
                .padding(.horizontal,15)
                
                Spacer()
            }
            UserSectionPicker()
                .padding(.top,10)
        }
    }
}

#Preview {
    ProfileView(
        user: users[0]
    )
.environment(SharedViewModel())
}
