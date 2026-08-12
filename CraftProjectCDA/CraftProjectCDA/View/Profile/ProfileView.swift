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
    @State var editProfileViewModel: EditProfileViewModel

    
    var columns: [GridItem] = Array(repeating: GridItem(.flexible(minimum: 10, maximum: 185)),count: 2)
    
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                
                Image("GarasuPhotoDeCouverture")
                    .imageModifier(frameWidth: 400, frameHeight: 230, clipShape: Rectangle())
            
                HStack{
                    
                    Image(profileViewModel.mainUser.imageName)
                        .imageModifier(frameWidth: 130, frameHeight: 130, clipShape: Circle())
                        .overlay(Circle()
                            .stroke(.white, lineWidth: 7)
                        )
                        .offset(x: -59, y: 115)
                    
                    
                    Text(profileViewModel.mainUser.pseudonym)
                        .fontWeight(.semibold)
                    
                    // SETTINGS BUTTON
                    NavigationLink{
                        profileViewModel.showSettings()
                    }label: {
                        Image(systemName: "gearshape.fill")
                            .foregroundStyle(.gray)
                            .font(.system(size: 24))
                            .padding(.trailing,8)
                    }
                    
                }
                
                VStack{
                NavigationLink{
                    profileViewModel.showEdit()
                }label: {
                    Image(systemName: "square.and.pencil")
                        .foregroundStyle(.blue)
                        .font(.system(size: 20))
                    
                    Text("EDIT")
                        .foregroundStyle(.blue)
                        .padding(.trailing,190)
                    
                }
                }
                
            }
        
            HStack{
                VStack(alignment: .leading){
                    
                    Text("Utilisateur")
                        .foregroundStyle(.gray)
                        .fontWeight(.semibold)
                    
                    
                    Text(profileViewModel.mainUser.description)
                        .italic()
                        .font(.footnote)
                }
                .padding(.leading,10)
                Spacer()
            }
            //
            // SECTION FOLLOW / REVIEWS
            
            HStack(){
                
              UserImagePicker()
             
            }
      
        }
    }
    
}

       

#Preview { NavigationStack{
    ProfileView(profileViewModel: ProfileViewModel(), editProfileViewModel: EditProfileViewModel())}
.environment(SharedViewModel())
}
