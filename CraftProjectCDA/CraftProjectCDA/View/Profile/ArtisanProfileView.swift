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
    @State var selectedTab = "artworks"
    
    
    var columns: [GridItem] = Array(repeating: GridItem(.flexible(minimum: 10, maximum: 185)),count: 2)
    
    var body: some View {
        VStack{
            ZStack{
                
                CoverImageUserCard()

                HStack(alignment: .bottom){
                    
                    Image(profileViewModel.mainArtisan.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 130, height: 130)
                        .clipShape(Circle())
                        .overlay(Circle()
                            .stroke(.white, lineWidth: 7)
                        )
                    
                    VStack{
                        HStack(spacing: 135){
                            
                            Text(profileViewModel.mainUser.pseudonym)
                                .fontWeight(.semibold)
                            
                            Image(systemName: "gearshape.fill")
                                .foregroundStyle(.gray)
                                .font(.system(size: 24))
                                .padding(.trailing,8)
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
                    .padding(.bottom,10)
                    
                }
                .padding(.top,100)
                
                
                
            }
            .ignoresSafeArea()
            
            VStack(alignment: .leading){
                Text("Utilisateur")
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
                
                
                Text("Bio")
                    .italic()
                    .font(.footnote)
            }
            .padding(.leading,-180)
            .padding(.bottom,10)
//BUTTON FOLLOW DM
            HStack{
                
                Button{
                    
                }label: {
                    ZStack(alignment: .center){
                        RoundedRectangle(cornerRadius: 32)
                            .frame(width: 160,height: 40)
                            .foregroundStyle(.mint.opacity(0.8))
                        HStack{
                            Image(systemName: "person.2.fill")
                                .font(.headline)
                                .foregroundStyle(.black.opacity(0.8))
                            Text("Suivre")
                                .font(.headline)
                                .fontDesign(.rounded)
                                .fontWeight(.medium)
                                .kerning(1)
                                .foregroundStyle(.black.opacity(0.8))
                        }
                    }
                    .padding(.bottom,40)
                    .padding(.trailing,10)
                    
                    Button{
                        
                    }label: {
                        ZStack(alignment: .center){
                            RoundedRectangle(cornerRadius: 32)
                                .frame(width: 160,height: 40)
                                .foregroundStyle(.mint.opacity(0.8))
                            HStack{
                                Image(systemName: "ellipsis.message")
                                    .font(.headline)
                                    .foregroundStyle(.black.opacity(0.8))
                                Text("Message")
                                    .font(.headline)
                                    .fontDesign(.rounded)
                                    .fontWeight(.medium)
                                    .kerning(1)
                                    .foregroundStyle(.black.opacity(0.8))
                            }
                        }
                    }
                    .padding(.bottom,40)
                    .padding(.leading,10)
                }
            }
            // SECTION FOLLOW / REVIEWS
            
            HStack(){
                
                Picker("", selection: $selectedTab){
                    Text("Créations")
                    
                        .tag("artworks")
                    
                    Text("À propos")
                    
                        .tag("aboutme")
                    
                    Text("Avis")
                    
                        .tag("reviews")
                    
                    Text("Journal")
                    
                        .tag("logbook")
                }
                .pickerStyle(.segmented)
                .scaleEffect(1.2)
                .colorMultiply(.mint.opacity(0.7))
                .padding(.horizontal,45)
            }
            
            ScrollView{
                LazyVGrid(columns: columns){
                    if selectedTab == "artworks"{
                        ForEach (profileViewModel.filterByArtworks) { artwork in
                            ArtworkUserView(artworkArtisan: artwork)
                        }
                    }else if selectedTab == "aboutme"{
                        VStack(alignment: .center){
                            AboutMeView()
                        }
                    }else if selectedTab == "reviews"{
                        
                    }else if selectedTab == "logbook"{
                        LogbookView()
                    }
                    
                }
            }
        }
        
        
    }
}



struct ArtworkUserView: View {
    
    
//    let artisan: ArtisanProfile
    let artworkArtisan: Artwork
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .cornerRadius(10)
                .foregroundStyle(.white)
            VStack {
                Image(artworkArtisan.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 180, height: 140)
                    .clipShape(UnevenRoundedRectangle(topLeadingRadius: 10, topTrailingRadius: 10))
                Spacer()
                HStack {
                    Text("\(artworkArtisan.name)")
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


#Preview {
    ArtisanProfileView(profileViewModel: ProfileViewModel())
}
