//
//  EditArtworkViewModel.swift
//  CraftProjectCDA
//
//  Created by Apprenant 89 on 07/08/2026.
//

import Foundation
import PhotosUI
import SwiftUI

@Observable
final class EditArtworkViewModel {
    
    enum Mode {
        case creation
        case edition
    }
    
    var artwork : Artwork
    let mode : Mode
    
    let categories = [
        "Joaillerie",
        "Broderie",
        "Céramique",
        "Poterie",
        "Chapeaux",
        "Cordonnerie",
        "Couture",
        "Ébénisterie",
        "Horlogerie",
        "Lutherie",
        "Maroquinerie",
        "Marqueterie",
        "Mosaïque",
        "Sculpture",
        "Sellerie",
        "Sérigraphie",
        "Tannerie",
        "Tapisserie",
        "Verrerie",
        "Autre"
    ]
    
    var selectedArtworkPhotoItem : PhotosPickerItem? = nil
    var displayedArtworkImage: Image? = nil
    
    init(existingArtwork: Artwork? = nil) {
        if let existingArtwork {
            self.artwork = existingArtwork
            self.mode = .edition
        } else {
            self.artwork = Artwork(
                name: "",
                imageName: "",
                imageArtisan: "",
                artCategory: "",
                artisanCategory: .verrier,
                description: "",
                details: "",
                artistID: .haruto)
            self.mode = .creation
        }
    }
    
    func loadSelectedImage() async {
        guard let item = selectedArtworkPhotoItem else { return }
        
        if let loadedImage = try? await item.loadTransferable(type: Image.self){
            displayedArtworkImage = loadedImage
        }
    }
    func addArtwork() {
        artworks.insert(artwork, at: 0)
    }
    
    func updateArtwork() {
        if let index = artworks.firstIndex(where: { $0.id == artwork.id}) {
            artworks[index] = artwork
        }
    }
    
    func save() {
        switch mode {
        case .creation :
            addArtwork()
        case .edition :
            updateArtwork()
        }
    }
}
