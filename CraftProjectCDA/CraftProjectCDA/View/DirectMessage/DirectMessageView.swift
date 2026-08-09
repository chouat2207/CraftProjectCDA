//
//  DirectMessageView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 05/08/2026.
//

import SwiftUI

struct DirectMessageView: View {
    @State private var messageViewModel: DirectMessageViewModel
    var peerName: String
    var profileImageName: String = "person.crop.circle.fill"
    @State var message: String = ""

    init(messageViewModel: DirectMessageViewModel, peerName: String, profileImageName: String = "person.crop.circle.fill") {
        _messageViewModel = State(initialValue: messageViewModel)
        self.peerName = peerName
        self.profileImageName = profileImageName
    }

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                Divider()
                ScrollView {
                    VStack(spacing: 12) {
                        ForEach(messageViewModel.directMessages) { message in
                            MessageCardView(content: message.content, isFromMainUser: message.isFromMainUser)
                        }
                    }
                    .padding()
                }
                .defaultScrollAnchor(.bottom)

                TextFieldView(message: $message, onSend: messageViewModel.postMessage)
            }
            .background(Color.white)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack(spacing: 10) {
                        Image(systemName: profileImageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32, height: 32)
                            .foregroundColor(.gray)
                        Text(peerName)
                            .font(.headline)
                            .foregroundColor(.primary)
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    DirectMessageView(
        messageViewModel: DirectMessageViewModel(peerID: .marie, messageService: MessageService()),
        peerName: "Didier"
    )
}
