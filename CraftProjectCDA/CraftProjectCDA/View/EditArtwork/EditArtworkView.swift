//
//  EditArtworkView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 89 on 08/08/2026.
//

import SwiftUI
import PhotosUI

struct EditArtworkView: View {
    @Environment(SharedViewModel.self) var sharedVM
    @Environment(\.dismiss) private var dismiss
    @State var viewModel = EditArtworkViewModel()
    @State private var artworkName: String = ""
    @State private var artworkDescription: String = ""
    var body: some View {
        ScrollView {
            VStack{
                PhotosPicker(selection: $viewModel.selectedArtworkPhotoItem, matching: .images){
                    ZStack{
                        if let displayedArtworkImage = viewModel.displayedArtworkImage {
                            displayedArtworkImage
                                .resizable()
                                .scaledToFill()
                                .frame(height: 280)
                                .frame(maxWidth: .infinity)
                                .clipped()
                        } else if !viewModel.artwork.imageName.isEmpty {
                            Image(viewModel.artwork.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(height: 280)
                                .frame(maxWidth: .infinity)
                                .clipped()
                        } else {
                            Rectangle()
                                .fill(Color.gray.opacity(0.1))
                                .frame(height: 280)
                                .overlay {
                                    Image(systemName: "photo.badge.plus")
                                        .font(.system(size: 100))
                                        .foregroundColor(.gray)
                                }
                        }
                    }
                }
                .onChange(of: viewModel.selectedArtworkPhotoItem) {
                    Task {
                        await viewModel.loadSelectedImage()
                    }
                }
                
                VStack (alignment: .leading, spacing : 30){
                    EditArtworkTextFieldRowView(title: "Nom :", placeholder: "Entrez le titre...", text: $artworkName)
                    
                    EditArtworkTextFieldRowView(title: "Description :", placeholder: "Rédigez votre description...", text: $artworkDescription)
                    
                    VStack (alignment: .leading) {
                        Text("Catégorie : ")
                            .font(.headline)
                        
                        Picker("Choisir une catégorie", selection : $viewModel.artwork.artCategory){
                            Text("Choisir une catégorie")
                                .foregroundStyle(.gray)
                                .tag("")
                            ForEach(viewModel.categories, id:\.self) {
                                category in Text(category).tag(category)
                            }
                        }
                        .pickerStyle(.menu)
                        .tint(.gray)
                        .frame(maxWidth: .infinity, alignment : .trailing)
                        .background (RoundedRectangle(cornerRadius: 20)
                            .fill(Color.white)
                            .stroke(Color.gray, lineWidth: 1)
                        )
                    }
                }
                .padding()
            }
        }
        //        .ignoresSafeArea(edges: .top)
        
        Button {
            sharedVM.saveArtwork(artworkName: artworkName, artworkDescription: artworkDescription, artCategory: viewModel.artwork.artCategory)
            dismiss()
        } label: {
            Text("Enregistrer")
                .font(.body)
                .fontWeight(.semibold)
                .foregroundColor(.black)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color(red: 0.4, green: 0.85, blue: 0.6))
                .cornerRadius(12)
        }
        .padding()
    }
}

#Preview {
    EditArtworkView()
        .environment(SharedViewModel())
}
