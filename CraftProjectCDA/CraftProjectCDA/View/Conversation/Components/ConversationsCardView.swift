//
//  ConversationCardView.swift
//  CraftProjectCDA
//

import SwiftUI

struct ConversationCardView: View {
    var name: String
    var lastMessage: String
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "person.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 44, height: 44)
                .fontWeight(.thin)
                .foregroundStyle(.black)
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
    ConversationCardView(name: "Didier", lastMessage: "Salut, bogoss")
        .padding()
}
