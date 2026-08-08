//
//  ButtonsCategory.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 06/08/2026.
//


import SwiftUI

struct ButtonsCategory: View {
    let displayedArtworks: [ArtisanCategory]

    private let columns = [
        GridItem(.flexible(), spacing: 14),
        GridItem(.flexible(), spacing: 14),
        GridItem(.flexible(), spacing: 14)
    ]

    var body: some View {
      
            LazyVGrid(columns: columns, spacing: 18) {
                ForEach(displayedArtworks, id: \.self) { category in
                    ButtonCategory(category: category.rawValue)
                }
            }
            .padding(.horizontal, 8)
            .padding(.vertical, 12)
        
    }
}

#Preview {
    ButtonsCategory(displayedArtworks: ArtisanCategory.allCases)
}
