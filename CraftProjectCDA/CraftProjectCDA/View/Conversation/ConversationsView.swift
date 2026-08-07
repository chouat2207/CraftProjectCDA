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
                NavigationLink{
                    DirectMessageView(directMessages:
                                        conversationVM.getAllMessages(
                                            from: conversation.peerID!
                                        ),
                                      peerName: conversationVM.getPeerName(
                                        peerID: conversation.peerID!
                                      )
                    )
                }
                label:{
                    ConversationCardView(name: conversation.peerName, lastMessage: conversation.lastMessagePosted)
                }
            }
            .navigationTitle("Messages")
        }
    }
}

#Preview {
    ConversationsView()
}
