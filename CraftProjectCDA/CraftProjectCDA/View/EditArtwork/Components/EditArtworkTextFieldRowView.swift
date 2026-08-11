//
//  EditArtworkTextFieldRowView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 89 on 08/08/2026.
//

import SwiftUI

struct EditArtworkTextFieldRowView: View {
    let title : String
    let placeholder : String
    @Binding var text : String
    
    
    var body: some View {
        VStack (alignment: . leading) {
            Text(title)
                .font(.headline)
            
            TextField(placeholder, text: $text, axis: .vertical)
                .lineLimit(1...5)
                .padding(8)
                .background (RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white)
                 .stroke(Color.gray, lineWidth: 1)
                )
            
        }
    }
}

#Preview {
    EditArtworkTextFieldRowView(title: "Titre : ", placeholder: "Entrez le titre ...", text: .constant("Création 120"))
}
