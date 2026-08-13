//
//  DirectMessageView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 05/08/2026.
//

import SwiftUI

struct DirectMessageView: View {
    @Environment(MessageService.self) var messageService: MessageService
    
    // Same reason as conversation view
    @State var directMessageVM: DirectMessageViewModel?
    
    var peerID: UUID
    var peerName: String
    var profileImageName: String
    @State var message: String = ""
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                Divider()
                ScrollView {
                    if let directMessageVM {
                        VStack(spacing: 12) {
                            ForEach(directMessageVM.directMessages) { message in
                                MessageCardView(
                                    content: message.content,
                                    isFromMainUser: message.isFromMainUser,
                                    imageName: message.senderImageName,
                                    dateText: message.date.toString()
                                )
                            }
                        }
                        .padding()
                    }
                }
                .defaultScrollAnchor(.bottom)
                TextFieldView(
                    message: $message,
                    onSend: { directMessageVM?.postMessage(content: $0)})
            }
            .customToolbar(imageName: profileImageName, userName: peerName)
        }
        .onAppear() {
            if directMessageVM == nil {
                directMessageVM = DirectMessageViewModel(peerID: peerID, messageService: messageService)
            }
        }
    }
}

#Preview {
    DirectMessageView(
        peerID: .marie,
        peerName: "Marie",
        profileImageName: "PlaceholderPortrait"
    )
    .environment(MessageService())
}
