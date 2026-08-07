//
//  ButtonCategory.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 06/08/2026.
//


import SwiftUI

struct ButtonCategory: View {
    let category: String
    @State private var estAppuye = false

    var body: some View {
        Button {
            estAppuye.toggle()
            print("Catégorie sélectionnée : \(category)")
        } label: {
            Text(category)
                .foregroundStyle(.black)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 12)
                .background(estAppuye ?
                            Color(red: 103/255, green: 226/255, blue: 150/255)
                            : Color.white)
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
