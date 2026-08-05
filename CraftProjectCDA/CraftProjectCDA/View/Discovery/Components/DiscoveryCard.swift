//
//  DiscoveryCard.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 02/08/2026.
//

import SwiftUI

struct DiscoveryCard: View {
    var itemName: String
    var itemImageName: String
    var body: some View {
        ZStack {
            Rectangle()
                
                .cornerRadius(10)
                .foregroundStyle(.white)
            VStack {
                Image(itemImageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 180, height: 140)
                    .clipShape(UnevenRoundedRectangle(topLeadingRadius: 10, topTrailingRadius: 10))
                Spacer()
                HStack {
                    Text(itemName)
                        .font(.caption)
                    Spacer()
                }
                
                .padding(.init(top: 5, leading: 10, bottom: 5, trailing: 0))
                Spacer()
            }
        }
        .padding()
        .frame(width: 180, height: 190)
        .shadow(radius: 2)
    }
}

#Preview {
    DiscoveryCard(itemName: "String", itemImageName: "String")
}
