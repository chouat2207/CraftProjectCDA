//
//  ConversationsView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 05/08/2026.
//

import SwiftUI

struct ConversationsView: View {
    @Environment(MessageService.self) var messageService: MessageService
    @State private var conversationVM: ConversationsViewModel?

    var body: some View {
        NavigationStack {
            ScrollView {
                if let conversationVM {
                    LazyVStack(spacing: 12) {
                        ForEach(conversationVM.conversationViewData) { conversation in
                            if let peerID = conversation.peerID {
                                NavigationLink {
                                    DirectMessageView(
                                        messageViewModel: DirectMessageViewModel(
                                            peerID: peerID,
                                            messageService: messageService
                                        ),
                                        peerName: conversationVM.getPeerName(peerID: peerID), profileImageName: conversationVM.getPeerProfilePicture(peerID: peerID)
                                    )
                                } label: {
                                    ConversationCardView(
                                        name: conversation.peerName,
                                        imageName: conversation.peerImageName,
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
            }
            .navigationTitle("Messages")
        }
        .onAppear {
            if conversationVM == nil {
                conversationVM = ConversationsViewModel(messageService: messageService)
            }
        }
    }
}

#Preview {
    ConversationsView()
        .environment(MessageService())
}
