//
//  AssetPickerView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 13/08/2026.
//

import SwiftUI

struct AssetImagePickerSheet: View {
    @Environment(\.dismiss) private var dismiss
    let assetNames: [String]
    
    @Binding var selectedImageName: String
    
    private let columns = [
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 12) {
                    ForEach(assetNames, id: \.self) { imageName in
                        Button {
                            selectedImageName = imageName
                            dismiss()
                        } label: {
                            Image(imageName)
                                .imageModifier(frameWidth: 110, frameHeight: 110, clipShape: RoundedRectangle(cornerRadius: 12))
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Choisir une image")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Annuler") {
                        dismiss()
                    }
                }
            }
        }
    }
}
