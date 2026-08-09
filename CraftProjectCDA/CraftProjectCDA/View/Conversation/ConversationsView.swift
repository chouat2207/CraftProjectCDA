//
//  ConversationsView.swift
//  CraftProjectCDA
//

import SwiftUI

struct ConversationsView: View {
    @Environment(MessageService.self) var messageService: MessageService
    @State var conversationVM: ConversationsViewModel = ConversationsViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 12) {
                    ForEach(conversationVM.conversationViewData) { conversation in
                        if let peerID = conversation.peerID {
                            NavigationLink {
                                DirectMessageView(
                                    directMessages: conversationVM.getAllMessages(from: peerID),
                                    peerName: conversationVM.getPeerName(peerID: peerID)
                                )
                            } label: {
                                ConversationCardView(
                                    name: conversation.peerName,
                                    lastMessage: conversation.lastMessagePosted
                                )
                            }
                            .buttonStyle(.plain)
                        }
                    }
                }
                .padding(.horizontal)
                .padding(.top, 8)
            }
            .navigationTitle("Messages")
        }
    }
}

#Preview {
    ConversationsView()
}
