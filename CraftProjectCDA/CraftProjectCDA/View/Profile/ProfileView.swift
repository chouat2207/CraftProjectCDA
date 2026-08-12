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
                    Image("GarasuPhotoDeCouverture")
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
                            
                            NavigationLink{
                                profileViewModel.showSettings()
                            }label: {
                                Image(systemName: "gearshape.fill")
                                    .foregroundStyle(.gray)
                                    .font(.system(size: 24))
                                    .padding(.trailing,8)
                            }
                        }
                    }
                    .padding(.horizontal,6)
                    .offset(y: 70)
                }
                
                
                VStack(){
                    NavigationLink{
                        profileViewModel.showEdit()
                    }label: {
                        Image(systemName: "square.and.pencil")
                            .foregroundStyle(.blue)
                            .font(.system(size: 20))
                        
                        Text("EDIT")
                            .foregroundStyle(.blue)
                    }
                }
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
                .padding(.leading,10)
                Spacer()
            }
            UserSectionPicker()
        }
    }
    
}



#Preview { NavigationStack{
    ProfileView(
        profileViewModel: ProfileViewModel(),
        user: users[0]
    )
}
.environment(SharedViewModel())
}
