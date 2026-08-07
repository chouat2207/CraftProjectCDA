//
//  ConversationCardView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 04/08/2026.
//

import SwiftUI

struct ConversationCardView: View {
    var name: String
    var lastMessage: String
    var body: some View {
            HStack {
                Image("PlaceholderPortrait")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 34)
                VStack(alignment: .leading) {
                    Text(name)
                    Text(lastMessage)
                        .font(.caption)
                }
                Spacer()
                Image(systemName: "chevron.forward")
            }
            .padding()
            .frame(width: 370)
            .background(
                Rectangle()
                    .cornerRadius(15)
                    .foregroundStyle(.gray)
            )
    }
}

#Preview {
    ConversationCardView(name: "Didier", lastMessage: "Salut, bogoss")
}
