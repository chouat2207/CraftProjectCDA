//
//  EditProfileView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 85 on 02/08/2026.
//

import SwiftUI
import PhotosUI

struct EditProfileView: View {
    @State private var userPhotoItem: PhotosPickerItem?
    @State private var selectedPhoto: Image?
    @State var pseudoInput = ""
    @State var bioInput = ""
    @State var siteInput = ""
    
    var body: some View {
        VStack{
            Image("GarasuPhotoDeCouverture")
                .resizable()
                .scaledToFill()
                .frame(width: 500, height: 270)
                .clipShape(Rectangle())
            
            
            ZStack{
                Image("GarasuPhotoDeProfil")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 130, height: 130)
                    .clipShape(Circle())
                    .overlay(Circle()
                        .stroke(.white, lineWidth: 7)
                    )
                
                selectedPhoto?
                    .resizable()
                    .scaledToFill()
                    .frame(width: 130, height: 130)
                    .clipShape(Circle())
                    .overlay(Circle()
                        .stroke(.white, lineWidth: 7)
                    )
                
                PhotosPicker(selection: $userPhotoItem, matching: .images){
                    Image(systemName: "plus.circle.fill")
                        .glassEffect(.clear)
                        .font(.largeTitle)
                        .foregroundStyle(.blue)
                        .padding(.leading,106)
                        .padding(.top,85)
                    
                }.task(id: userPhotoItem){
                    selectedPhoto = try? await userPhotoItem?
                        .loadTransferable(type: Image.self)
                }
            }
            .padding(.trailing,255)
            
            HStack(){
                Text("@")
                    .font(.title2)
                    .fontWeight(.semibold)
                TextField(" PSEUDO", text: $pseudoInput)
                    .frame(width: 150)
                    .overlay(RoundedRectangle(cornerRadius: 5)
                        .stroke(.secondary.opacity(0.8), lineWidth: 1))
                    .textInputAutocapitalization(.characters)
                
                Spacer()
            }
            .padding(.horizontal,15)
            .padding(.top,15)
            
            VStack(alignment: .leading){
                Text("BIO")
                    .font(.callout)
                    .fontWeight(.semibold)
                    .kerning(1)
                    .padding(.top,15)
                TextField(" Décrivez-vous", text: $bioInput)
                    .overlay(RoundedRectangle(cornerRadius: 5)
                        .stroke(.secondary.opacity(0.8), lineWidth: 1))
                    
            }
            .padding(.horizontal,15)
            
            VStack(alignment: .leading){
                Text("SITE")
                    .font(.callout)
                    .fontWeight(.semibold)
                    .kerning(1)
                    .padding(.top,20)
                TextField(" http://", text: $siteInput)
                    .keyboardType(.URL)
                    .textContentType(.URL)
                    .overlay(RoundedRectangle(cornerRadius: 5)
                        .stroke(.secondary.opacity(0.8), lineWidth: 1))
            }
            .padding(.horizontal,15)
            
            Button{
                
            }label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 32)
                        .frame(width: 180,height: 50)
                        .foregroundStyle(.blue.secondary)
                    Text("Sauvegarder")
                        .font(.title2)
                        .fontWeight(.regular)
                        .foregroundStyle(.white)
                }
                .padding(.top,50)
                
            }
            
            Spacer()
            
           
        }
        .ignoresSafeArea()
    }
}

#Preview {
    EditProfileView()
}
