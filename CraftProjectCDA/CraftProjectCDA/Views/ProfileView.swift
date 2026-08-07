//
//  ProfileView.swift
//
//
//  Created by Apprenant 85 on 31/07/2026.
//

import SwiftUI

struct ProfileView: View {
    
    @State var profileViewModel: ProfileViewModel
    @State var editProfileViewModel: EditProfileViewModel
    @State var selectedTab = "following"
    
    var user : User = User(id: .haruto, firstName: "", lastName: "", pseudonym: "", imageName: "", joinedDate: "", address: "", city: "", description: "", favoriteArtworksID: [], followingID: [], reviewsID: [])
    
    var columns: [GridItem] = Array(repeating: GridItem(.flexible(minimum: 10, maximum: 185)),count: 2)
    
    var body: some View {
        
        NavigationStack{
            VStack{
                ZStack{
                    
                    Image("GarasuPhotoDeCouverture")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 500, height: 270)
                        .clipShape(Rectangle())
                        .padding(.top,-190)
                    
                    HStack(alignment: .bottom){
                        
                        Image("GarasuPhotoDeProfil")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 130, height: 130)
                            .clipShape(Circle())
                            .overlay(Circle()
                                .stroke(.white, lineWidth: 7)
                            )
                        
                        VStack{
                            HStack(spacing: 130){
                                
                                Text(profileViewModel.user.pseudonym)
                                    .fontWeight(.semibold)
                                
                                // SETTINGS BUTTON
                                Button{
                                    profileViewModel.showSettings()
                                }label: {
                                    Image(systemName: "gearshape.fill")
                                        .foregroundStyle(.gray)
                                        .font(.system(size: 24))
                                        .padding(.trailing,8)
                                }
                                
                            }
                            
                            //EDIT PROFILE BUTTON
                            HStack(spacing: 7){
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
                        .padding(.bottom,15)
                        
                    }
                    .padding(.top,100)
                    
                }
                .ignoresSafeArea()
                
                //            VStack(alignment: .leading){
                //                Text("Utilisateur")
                //                    .foregroundStyle(.gray)
                //                    .fontWeight(.semibold)
                //
                //
                //                Text("Bio")
                //                    .italic()
                //                    .font(.footnote)
                //            }
                //            .padding(.top,-290)
                //            .padding(.trailing,290)
                // SECTION FOLLOW / REVIEWS
                
                HStack(){
                    
                    Picker("", selection: $selectedTab){
                        Text("Abonnements")
                        
                            .tag("following")
                        
                        Text("Avis")
                        
                            .tag("reviews")
                    }
                    .pickerStyle(.segmented)
                    .scaleEffect(1.2)
                    .colorMultiply(.mint.opacity(0.7))
                    
                }
                .padding(.horizontal,93)
                
                ScrollView{
                    LazyVGrid(columns: columns){
                        if selectedTab == "following"{
                            //                    ForEach (users) { user in
                            //UserFollowing
                            ForEach (users) { user in
                                UserFollowing(user: user)
                            }
                        }else if selectedTab == "reviews"{
                            //ForEach Users -> reviewsID
                            ForEach (users) { user in
                                UserReviews(user: user)
                            }
                        }
                        
                    }
                }
                
                
            }
            
        }
    }
    
}

// ABONNEMENTS
struct UserFollowing: View {
    let user: User
    
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .cornerRadius(10)
                .foregroundStyle(.white)
            VStack {
                Image(user.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 180, height: 140)
                    .clipShape(UnevenRoundedRectangle(topLeadingRadius: 10, topTrailingRadius: 10))
                Spacer()
                HStack {
                    Text("\(user.firstName)"+"\(user.lastName)")
                        .font(.caption)
                    Spacer()
                }
                
                .padding(.init(top: 5, leading: 10, bottom: 5, trailing: 0))
                Spacer()
            }
        }
        .padding()
        .frame(width: 180, height: 190)
        .shadow(radius: 2)
        
    }
}

// AVIS
struct UserReviews: View {
    let user: User
    
    var body: some View{
        
    }
}
#Preview { NavigationStack{
    ProfileView(profileViewModel: ProfileViewModel(user: users[5]), editProfileViewModel: EditProfileViewModel())}
}
