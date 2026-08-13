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
    @State private var selectedImageName: String = ""
    @State private var isShowingPicker = false
    
    let mockAssetNames: [String] = ["pottery1", "pottery2", "pottery3","jewelry1", "jewelry2", "jewelry3"]
    
    var body: some View {
        ScrollView {
            VStack{
                Button {
                    isShowingPicker = true
                } label: {
                    ZStack {
                        if !selectedImageName.isEmpty {
                            Image(selectedImageName)
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
                                    VStack(spacing: 8) {
                                        Image(systemName: "photo.badge.plus")
                                            .font(.system(size: 60))
                                        Text("Ajouter une image")
                                            .font(.subheadline)
                                    }
                                    .foregroundColor(.gray)
                                }
                        }
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
        .sheet(isPresented: $isShowingPicker) {
            AssetImagePickerSheet(
                assetNames: mockAssetNames,
                selectedImageName: $selectedImageName
            )
        }
        
        Button {
            sharedVM.saveArtwork(
                artworkImageName: selectedImageName,
                artworkName: artworkName,
                artworkDescription: artworkDescription,
                artCategory: viewModel.artwork.artCategory
            )
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
