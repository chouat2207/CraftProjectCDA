//
//  ConversationCardView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 05/08/2026.
//

import SwiftUI

struct ConversationCardView: View {
    var name: String
    var imageName: String
    var lastMessage: String
    
    var body: some View {
        HStack(spacing: 12) {
            AvatarView(
                imageName: imageName,
                frameWidth: 44,
                frameHeight: 44
            )
            VStack(alignment: .leading, spacing: 4) {
                Text(name)
                    .font(.headline)
                    .foregroundStyle(.secondary)
                
                Text(lastMessage)
                    .font(.subheadline)
                    .foregroundStyle(.primary)
                    .lineLimit(1)
            }
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .font(.system(size: 14, weight: .semibold))
                .foregroundStyle(.gray)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 12)
        .background(Color(.systemGray6))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

#Preview {
    ConversationCardView(name: "Didier", imageName: "PlaceholderPortrait", lastMessage: "Salut, bogoss")
        .padding()
}
