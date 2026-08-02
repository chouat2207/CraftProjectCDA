//
//  ProfileView.swift
//
//
//  Created by Apprenant 85 on 31/07/2026.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var isShowEdit: Bool = false
    
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
                            
                            Image(systemName: "gearshape.fill")
                                .foregroundStyle(.gray)
                                .font(.system(size: 24))
                                .padding(.trailing,8)
                        }
                        
                        HStack(spacing: 7){
  //EDIT PROFILE BUTTON
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
            
            Spacer()
            
            
        }
        
    }
    
}

#Preview {
    ProfileView()}
