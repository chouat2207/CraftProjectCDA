//
//  ArtisanProfileView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 85 on 05/08/2026.
//

import SwiftUI

struct ArtisanProfileView: View {
    
    @State var profileViewModel: ProfileViewModel = ProfileViewModel()
    @State private var isShowEdit: Bool = false
    var user: User
    
    var body: some View {
        NavigationStack{
            VStack{
                ZStack{
                    CoverImageUserCard(user: users[0])
                    
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
                HStack(spacing: 7){
                   
                        EditProfileButton()
                     
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
                    FollowButton()
                    Spacer()
                    MessageButton()  
                }
                .padding()
                
                ArtisanSectionPicker()
            }
        }
    }
}



#Preview {
    ArtisanProfileView(user: users[0])
}
