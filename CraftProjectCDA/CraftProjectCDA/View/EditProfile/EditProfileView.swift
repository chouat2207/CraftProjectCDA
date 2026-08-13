//
//  EditProfileView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 85 on 02/08/2026.
//

import SwiftUI
import PhotosUI


struct EditProfileView: View {
    @Environment(SharedViewModel.self) var sharedVM
    @State var editProfileViewModel: EditProfileViewModel
    let user: User
    
    @State private var userProfilPicture: PhotosPickerItem?
    @State private var userCoverPicture: PhotosPickerItem?
    @State private var selectedPhoto: Image?
    @State private var selectedCover: Image?
    
    @State var pseudoInput = ""
    @State var bioInput = ""
    @State var siteInput = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            
            
            Text("")
            Divider()
                .frame(minHeight:5)
                .overlay(Color.mint.opacity(0.7))
            
            ScrollView{
                VStack(alignment: .leading){
                    
                    Text("VOTRE AVATAR")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .kerning(1)
                        .padding(.leading,10)
                    
                    ZStack{
                        Image(ProfileViewModel().mainUser.imageName)
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
                        
                        PhotosPicker(selection: $userProfilPicture, matching: .images){
                            Image(systemName: "plus.circle.fill")
                                .glassEffect(.clear)
                                .font(.largeTitle)
                                .foregroundStyle(.mint)
                                .padding(.leading,106)
                                .padding(.top,85)
                            
                        }.task(id: userProfilPicture){
                            selectedPhoto = try? await userProfilPicture?
                                .loadTransferable(type: Image.self)
                        }
                    }
                    
                    
                }
                
                Divider()
                    .frame(minHeight:1.5)
                    .overlay(Color.mint.opacity(0.4))
                    .padding(10)
                    .padding(.vertical,5)
                
                VStack{
                    Text("VOTRE BANNIÈRE")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .kerning(1)
                        .padding(.horizontal)
                        .padding(.bottom, -100)
                    
                    
                    ZStack() {
                        Image("GarasuPhotoDeCouverture")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 200, height: 100)
                            .clipShape(Rectangle())
                        
                        
                        selectedCover?
                            .resizable()
                            .scaledToFill()
                            .frame(width: 200, height: 100)
                            .clipShape(Rectangle())
                            .padding(.horizontal)
                        
                        
                        PhotosPicker(selection: $userCoverPicture,matching: .images){
                            Image(systemName: "plus.circle.fill")
                                .glassEffect(.clear)
                                .font(.largeTitle)
                                .foregroundStyle(.mint)
                                .padding(.top,115)
                        }
                        .task(id: userCoverPicture){
                            selectedCover = try? await userCoverPicture?
                                .loadTransferable(type: Image.self)
                            
                        }
                        
                    }
                }
                Divider()
                    .frame(minHeight:1.5)
                    .overlay(Color.mint.opacity(0.4))
                    .padding(10)
                    .padding(.vertical,5)
                
                Text("VOTRE PSEUDO")
                    .font(.callout)
                    .fontWeight(.semibold)
                    .kerning(1)
                    .padding(.trailing,240)
                HStack(){
                    Text("@")
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding(.trailing,3)
                    TextField(" PSEUDO", text: $pseudoInput)
                        .padding(3)
                        .frame(width: 330)
                        .overlay(RoundedRectangle(cornerRadius: 7)
                            .stroke(.mint, lineWidth: 1))
                        .textInputAutocapitalization(.characters)
                    
                    Spacer()
                }
                .padding(.horizontal,15)
                
                
                Divider()
                    .frame(minHeight:1.5)
                    .overlay(Color.mint.opacity(0.4))
                    .padding(10)
                    .padding(.vertical,5)
                
                VStack(alignment: .leading){
                    Text("VOTRE BIO")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .kerning(1)
                    
                    TextField(" Quelques mots sur vous ...", text: $bioInput)
                        .padding(.bottom,50)
                        .padding(3)
                        .multilineTextAlignment(.leading)
                        .overlay(RoundedRectangle(cornerRadius: 7)
                            .stroke(.mint, lineWidth: 1))
                    
                }
                .padding(.horizontal,15)
                
                Divider()
                    .frame(minHeight:1.5)
                    .overlay(Color.mint.opacity(0.4))
                    .padding(10)
                    .padding(.vertical,5)
                
                VStack(alignment: .leading){
                    Text("VOTRE SITE")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .kerning(1)
                    
                    TextField(" https://", text: $siteInput)
                        .keyboardType(.URL)
                        .textContentType(.URL)
                        .padding(3)
                        .overlay(RoundedRectangle(cornerRadius: 7)
                            .stroke(.mint, lineWidth: 1))
                }
                .padding(.horizontal,15)
                
                Divider()
                    .frame(minHeight:1.5)
                    .overlay(Color.mint.opacity(0.4))
                    .padding(10)
                    .padding(.vertical,5)
                
                Button{
                    sharedVM.updateMainUserProfile(pseudonym: pseudoInput, description: bioInput, imageName: "")
                }label: {
                    ZStack(alignment: .center){
                        RoundedRectangle(cornerRadius: 32)
                            .frame(width: 180,height: 50)
                            .foregroundStyle(.mint.opacity(0.8))
                        Text("Sauvegarder")
                            .font(.title2)
                            .fontDesign(.rounded)
                            .fontWeight(.medium)
                            .kerning(1)
                            .foregroundStyle(.black.opacity(0.8))
                    }
                    .padding(15)
                    
                    
                }
                
                Spacer()
                
                
            }
        }
        .navigationTitle(Text(""))
        .navigationBarTitleDisplayMode(.inline)
        .toolbar{
            ToolbarItem(placement: .principal) {
                Text("Éditer votre profil")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .kerning(1)
                
            }
        }
    }
}

#Preview {
    EditProfileView(editProfileViewModel: EditProfileViewModel(), user: users[5])
        .environment(SharedViewModel())
}
