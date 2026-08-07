//
//  ButtonCategory.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 06/08/2026.
//


import SwiftUI

struct ButtonCategory: View {
    let category: String

    var body: some View {
        Button {
            print("Catégorie sélectionnée : \(category)")
        } label: {
            Text(category)
                .foregroundStyle(.black)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 12)
                .background(.white)
                .overlay {
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(.gray, lineWidth: 1)
                }
                .clipShape(RoundedRectangle(cornerRadius: 12))
        }
    }
}

#Preview {
    ButtonCategory(category: "Céramique")
        .padding()
}
