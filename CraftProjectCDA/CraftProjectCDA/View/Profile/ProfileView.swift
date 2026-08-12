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
    @State var selectedTab = "following"
    
    var columns: [GridItem] = Array(repeating: GridItem(.flexible(minimum: 10, maximum: 185)),count: 2)
    
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                
                Image("GarasuPhotoDeCouverture")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 400, height: 230)
                    .clipShape(Rectangle())
            
                HStack{
                    
                    Image(profileViewModel.mainUser.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 130, height: 130)
                        .clipShape(Circle())
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
            .padding(.horizontal,115)
            
            
            if selectedTab == "following"{
                ForEach (profileViewModel.filterByFollower) { user in
                    UserFollowing(user: user)
                }
            }else if selectedTab == "reviews"{
                //ForEach Users -> reviewsID
                ReviewsView()
                
                
                
                
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
                    Text("\(user.firstName) "+"\(user.lastName)")
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
    ProfileView(profileViewModel: ProfileViewModel(), editProfileViewModel: EditProfileViewModel())}
.environment(SharedViewModel())
}
