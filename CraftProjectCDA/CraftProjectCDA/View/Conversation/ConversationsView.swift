//
//  ConversationView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 04/08/2026.
//

import SwiftUI

struct ConversationsView: View {
    @State var conversationVM: ConversationsViewModel = ConversationsViewModel()
    var body: some View {
        NavigationStack {
            ForEach(conversationVM.conversationViewData) {
                conversation in
                ConversationCardView(name: conversation.peerName, lastMessage: conversation.lastMessagePosted)
            }
            .navigationTitle("Messages")
        }
    }
}

#Preview {
    ConversationsView()
}
