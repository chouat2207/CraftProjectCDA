//
//  ProfileView.swift
//
//
//  Created by Apprenant 85 on 31/07/2026.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var isShowEdit: Bool = false
    @State private var isShowSettings: Bool = false
    
    @State var selectedTab = "following"
    
    var body: some View {
        
        
        VStack{
            ZStack{
                
                Image("GarasuPhotoDeCouverture")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 500, height: 270)
                    .clipShape(Rectangle())
                    .padding(.bottom,190)
                
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
                            
                            Text("@GARASU")
                                .fontWeight(.semibold)
                    // SETTINGS BUTTON
                            Button{
                               isShowSettings = true
                            }label: {
                                Image(systemName: "gearshape.fill")
                                    .foregroundStyle(.gray)
                                    .font(.system(size: 24))
                                    .padding(.trailing,8)
                            }
                            
                        }
                        
                        //EDIT PROFILE BUTTON
                        HStack(spacing: 7){
                            Button{
                                isShowEdit = true
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
                
                VStack(alignment: .leading){
                    Text("Utilisateur")
                        .foregroundStyle(.gray)
                        .fontWeight(.semibold)
                    
                    
                    Text("Bio")
                        .italic()
                        .font(.footnote)
                }
                .padding(.top,290)
                .padding(.trailing,290)
                
            }
            .ignoresSafeArea()
            
            // SECTION FOLLOW / REVIEWS
            
            HStack(){
                
                Picker("", selection: $selectedTab){
                    Text("Abonnements")
                    
                        .tag("following")
                    
                    Text("Avis")
                    
                        .tag("reviews")
                }
                .pickerStyle(.segmented)
                .scaleEffect(1.4)
                .colorMultiply(.mint.opacity(0.7))
                .padding(.horizontal,70)
                
                if selectedTab == "following"{
                    //                    ForEach (users) { user in
                    //UserFollowing
                }else if selectedTab == "reviews"{
                    //ForEach Users -> reviewsID
                }
                
            }
        }
        Spacer()
        
        
        
        
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
#Preview {
    ProfileView()}
