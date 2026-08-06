//
//  EditProfileView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 85 on 02/08/2026.
//

import SwiftUI
import PhotosUI

struct EditProfileView: View {
    @State var viewModel: EditProfileViewModel
    
    @State private var userPhotoItem: PhotosPickerItem?
    @State private var selectedPhoto: Image?
    
    @State var pseudoInput = ""
    @State var bioInput = ""
    @State var siteInput = ""
    
    var body: some View {
        VStack(){
            HStack(){
                Image("GarasuPhotoDeCouverture")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 100)
                    .clipShape(Rectangle())
                    .padding(6)
                    .border(.gray.secondary, width: 2)
                    .padding()
                
                selectedPhoto?
                    .resizable()
                    .scaledToFill()
                    .frame(width: 500, height: 270)
                    .clipShape(Rectangle())
                
                PhotosPicker(selection: $userPhotoItem, matching: .images){
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 100,height: 100)
                            .foregroundStyle(.gray.quinary)
                            .overlay(RoundedRectangle(cornerRadius: 15).stroke(.gray.opacity(0.4),lineWidth: 2))
                        
                            
                        Image(systemName: "plus.circle.fill")
                            .glassEffect(.clear)
                            .font(.largeTitle)
                            .foregroundStyle(.mint)
                        
                    }
                }
                .task(id: userPhotoItem){
                    selectedPhoto = try? await userPhotoItem?
                        .loadTransferable(type: Image.self)
                }
            
                Spacer()
            }
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
                        .foregroundStyle(.mint)
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
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding(.trailing,3)
                TextField(" PSEUDO", text: $pseudoInput)
                    .padding(3)
                    .frame(width: 330)
                    .overlay(RoundedRectangle(cornerRadius: 7)
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
                TextField(" Quelques mots sur vous ...", text: $bioInput)
                    .padding(.bottom,50)
                    .padding(3)
                    .multilineTextAlignment(.leading)
                    .overlay(RoundedRectangle(cornerRadius: 7)
                        .stroke(.secondary.opacity(0.8), lineWidth: 1))
                    
            }
            .padding(.horizontal,15)
            
            VStack(alignment: .leading){
                Text("SITE")
                    .font(.callout)
                    .fontWeight(.semibold)
                    .kerning(1)
                    .padding(.top,20)
                TextField(" https://", text: $siteInput)
                    .keyboardType(.URL)
                    .textContentType(.URL)
                    .padding(3)
                    .overlay(RoundedRectangle(cornerRadius: 7)
                        .stroke(.secondary.opacity(0.8), lineWidth: 1))
            }
            .padding(.horizontal,15)
            
            Button{
//                viewModel.saveEditChanges(users[0].id)
            }label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 32)
                        .frame(width: 180,height: 50)
                        .foregroundStyle(.mint.secondary)
                    Text("Sauvegarder")
                        .font(.title2)
                        .fontWeight(.regular)
                        .foregroundStyle(.white)
                }
                .padding(.top,50)
                
            }
            
            Spacer()
            
           
        }
        
    }
}

#Preview {
    EditProfileView(viewModel: EditProfileViewModel())
}
