//
//  ArtisanProfileCreationView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 89 on 12/08/2026.
//

import SwiftUI
import PhotosUI

struct ArtisanProfileCreationView: View {
    @Environment(SharedViewModel.self) var sharedVM
    @Environment(\.dismiss) private var dismiss
    @State private var navigateToArtisanProfile = false
    
    @State private var shopPictureItem: PhotosPickerItem?
    @State private var coverPictureItem: PhotosPickerItem?
    @State private var selectedShopImage: Image?
    @State private var selectedCoverImage: Image?
    
    @State private var categoryInput = "Verrerie"
    @State private var phoneInput = ""
    @State private var websiteInput = ""
//    @State private var aboutInput = ""
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                
                Text("")
                Divider()
                    .frame(minHeight: 5)
                    .overlay(Color.mint.opacity(0.7))
                
                ScrollView {
//                    VStack(alignment: .leading) {
                    HStack {
                        Text("PHOTO DE VOTRE PROFIL")
                            .font(.callout)
                            .fontWeight(.semibold)
                            .kerning(1)
                            .padding(.leading, 10)
                        
                        ZStack {
                            Image(sharedVM.mainUser?.imageName ?? "avatarPlaceholder")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 130, height: 130)
                                .clipShape(Circle())
                                .overlay(Circle()
                                    .stroke(.white, lineWidth: 7)
                                )
                            
                            selectedShopImage?
                                .resizable()
                                .scaledToFill()
                                .frame(width: 130, height: 130)
                                .clipShape(Circle())
                                .overlay(Circle()
                                    .stroke(.white, lineWidth: 7)
                                )
                            
                            PhotosPicker(selection: $shopPictureItem, matching: .images) {
                                Image(systemName: "plus.circle.fill")
                                    .glassEffect(.clear)
                                    .font(.largeTitle)
                                    .foregroundStyle(.mint)
                                    .padding(.leading, 106)
                                    .padding(.top, 85)
                            }
                            .task(id: shopPictureItem) {
                                selectedShopImage = try? await shopPictureItem?.loadTransferable(type: Image.self)
                            }
                        }
                    }
                    
                    Divider()
                        .frame(minHeight: 1.5)
                        .overlay(Color.mint.opacity(0.4))
                        .padding(10)
                        .padding(.vertical, 5)
                    
                    HStack {
                        Text("VOTRE BANNIÈRE")
                            .font(.callout)
                            .fontWeight(.semibold)
                            .kerning(1)
                            .padding(.horizontal)
                            .padding(.bottom, -100)
                        
                        ZStack {
                            Image("GarasuPhotoDeCouverture")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 200, height: 100)
                                .clipShape(Rectangle())
                            
                            selectedCoverImage?
                                .resizable()
                                .scaledToFill()
                                .frame(width: 200, height: 100)
                                .clipShape(Rectangle())
                                .padding(.horizontal)
                            
                            PhotosPicker(selection: $coverPictureItem, matching: .images) {
                                Image(systemName: "plus.circle.fill")
                                    .glassEffect(.clear)
                                    .font(.largeTitle)
                                    .foregroundStyle(.mint)
                                    .padding(.top, 115)
                            }
                            .task(id: coverPictureItem) {
                                selectedCoverImage = try? await coverPictureItem?.loadTransferable(type: Image.self)
                            }
                        }
                    }
                    
                    Divider()
                        .frame(minHeight: 1.5)
                        .overlay(Color.mint.opacity(0.4))
                        .padding(10)
                        .padding(.vertical, 5)
                    
                    VStack(alignment: .leading) {
                        Text("VOTRE CATÉGORIE D'ART")
                            .font(.callout)
                            .fontWeight(.semibold)
                            .kerning(1)
                        
                        TextField(" Exemple: Verrerie, Céramique...", text: $categoryInput)
                            .padding(3)
                            .overlay(RoundedRectangle(cornerRadius: 7)
                                .stroke(.mint, lineWidth: 1))
                    }
                    .padding(.horizontal, 15)
                    .padding(.bottom,15)
                    
                    VStack(alignment: .leading) {
                        Text("VOTRE TÉLÉPHONE")
                            .font(.callout)
                            .fontWeight(.semibold)
                            .kerning(1)
                        
                        TextField(" 06 12 34 56 78", text: $phoneInput)
                            .keyboardType(.phonePad)
                            .padding(3)
                            .overlay(RoundedRectangle(cornerRadius: 7)
                                .stroke(.mint, lineWidth: 1))
                    }
                    .padding(.horizontal, 15)
                    .padding(.bottom,15)
                    
                    
                    VStack(alignment: .leading) {
                        Text("À PROPOS DE VOTRE ATELIER")
                            .font(.callout)
                            .fontWeight(.semibold)
                            .kerning(1)
                        
//                        TextField(" Décrivez votre savoir-faire...", text: $aboutInput)
//                            .padding(.bottom, 50)
//                            .padding(3)
//                            .multilineTextAlignment(.leading)
//                            .overlay(RoundedRectangle(cornerRadius: 7)
//                                .stroke(.mint, lineWidth: 1))
                    }
                    .padding(.horizontal, 15)
                    .padding(.bottom,15)
    
                    
                    VStack(alignment: .leading) {
                        Text("VOTRE SITE WEB")
                            .font(.callout)
                            .fontWeight(.semibold)
                            .kerning(1)
                        
                        TextField(" https://", text: $websiteInput)
                            .keyboardType(.URL)
                            .textContentType(.URL)
                            .textInputAutocapitalization(.never)
                            .padding(3)
                            .overlay(RoundedRectangle(cornerRadius: 7)
                                .stroke(.mint, lineWidth: 1))
                    }
                    .padding(.horizontal, 15)
                    .padding(.bottom,15)
                    
                    Divider()
                        .frame(minHeight: 1.5)
                        .overlay(Color.mint.opacity(0.4))
                        .padding(10)
                        .padding(.vertical, 5)
                    
                    Button {
                        sharedVM.becomeArtisan()
                        navigateToArtisanProfile = true
                    } label: {
                        ZStack(alignment: .center) {
                            RoundedRectangle(cornerRadius: 32)
                                .frame(width: 220, height: 50)
                                .foregroundStyle(.mint.opacity(0.8))
                            
                            Text("Devenir Artisan")
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
            //            .navigationTitle(Text(""))
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("<") {
                        dismiss()
                    }
                    .foregroundStyle(.mint)
                }
                ToolbarItem(placement: .principal) {
                    Text("Devenez Artisan")
                        .font(.largeTitle)
                        .font(.headline)
                        .fontWeight(.bold)
                        .kerning(1)
                }
            }
            .onAppear {
                if sharedVM.mainUser != nil
                {
//                    aboutInput = user.description
                }
            }
            .navigationDestination(isPresented: $navigateToArtisanProfile) {
                if let user = sharedVM.mainUser {
                    ArtisanProfileView(user: user)
                        .environment(sharedVM)
                }
            }
        }
    }
}

#Preview {
    ArtisanProfileCreationView()
        .environment(SharedViewModel())
}
