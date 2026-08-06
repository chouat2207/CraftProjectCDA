//
//  ArtisanProfileView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 85 on 05/08/2026.
//

import SwiftUI

struct ArtisanProfileView: View {
    
    @State private var isShowEdit: Bool = false
    @State var selectedTab = "Créations"
    
    var body: some View {
        VStack{
            ZStack{
                
                Image("TierraOcrePhotoDeCouverture")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 500, height: 270)
                    .clipShape(Rectangle())
                    .padding(.bottom,190)
                
                HStack(alignment: .bottom){
                    
                    Image("TierraOcre")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 130, height: 130)
                        .clipShape(Circle())
                        .overlay(Circle()
                            .stroke(.white, lineWidth: 7)
                        )
                    
                    VStack{
                        HStack(spacing: 103){
                            
                            Text("@TIERRAOCRE")
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
                .padding(.horizontal,40)
                
                if selectedTab == "artworks"{
                    //                    ForEach (users) { user in
                    //
                }else if selectedTab == "aboutme"{
                    //ForEach Users -> aboutme
                }else if selectedTab == "reviews"{
                    
                }else if selectedTab == "logbook"{
                    
                }
                
            }
        }
        Spacer()
        
    }
}

#Preview {
    ArtisanProfileView()
}
