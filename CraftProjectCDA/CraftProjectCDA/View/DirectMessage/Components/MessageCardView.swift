//
//  MessageCardView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 05/08/2026.
//

import SwiftUI

struct MessageCardView: View {
    var content: String
    var isFromMainUser: Bool
    var imageName: String
    var dateText: String
    
    var body: some View {
        HStack(alignment: .top) {
            if !isFromMainUser {
                AvatarView(
                    imageName: imageName,
                    frameWidth: 32,
                    frameHeight: 32
                )
            } else {
                Spacer(minLength: 40)
            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text(content)
                    .font(.body)
                HStack {
                    Spacer()
                    Text(dateText)
                        .font(.caption2)
                        .foregroundStyle(.secondary)
                }
            }
            .padding(12)
            .background(isFromMainUser ? .green.opacity(0.2) : .gray.opacity(0.2))
            .clipShape(UnevenRoundedRectangle(
                topLeadingRadius: isFromMainUser ? 16 : 0,
                bottomLeadingRadius: 16,
                bottomTrailingRadius: 16,
                topTrailingRadius:  isFromMainUser ? 0 : 16))
            
            if isFromMainUser {
                AvatarView(
                    imageName: imageName,
                    frameWidth: 32,
                    frameHeight: 32
                )
            } else {
                Spacer(minLength: 40)
            }
        }
    }
    

}

#Preview {
    VStack(spacing: 16) {
        MessageCardView(
            content: "Message reçu de peerUser",
            isFromMainUser: false,
            imageName: "PlaceholderPortrait",
            dateText: Date().toString()
        )
        
        MessageCardView(
            content: "Message envoyé par mainUser",
            isFromMainUser: true,
            imageName: "PlaceholderPortrait",
            dateText: Date().toString()
        )
    }
    .padding()
}
