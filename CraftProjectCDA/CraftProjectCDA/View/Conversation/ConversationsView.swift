//
//  ConversationsView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 05/08/2026.
//

import SwiftUI

struct ConversationsView: View {
    @Environment(MessageService.self) var messageService: MessageService
    @Environment(SharedViewModel.self) var sharedVM: SharedViewModel
    
    // Using optional that i unwrap in the body, not sure if this is a
    // proper solution, view was crashing because of the view model was
    // trying to use the service
    @State var conversationVM: ConversationsViewModel?

    var body: some View {
        NavigationStack {
            if let user = sharedVM.mainUser {
                Header(imageName: user.imageName, title: "Messages", user: user)
            }
            ScrollView {
                if let conversationVM {
                    LazyVStack(spacing: 12) {
                        ForEach(conversationVM.conversationViewData) { conversation in
                            if let peerID = conversation.peerID {
                                NavigationLink {
                                    DirectMessageView(peerID: peerID, peerName: conversation.peerName, profileImageName: conversation.peerImageName)
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
        .environment(SharedViewModel())
}
