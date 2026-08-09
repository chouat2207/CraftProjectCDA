//
//  DirectMessageView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 05/08/2026.
//

import SwiftUI

struct DirectMessageView: View {
    var directMessages: [DirectMessage]
    var peerName: String
    var profileImageName: String = "person.crop.circle.fill"
    @State var message: String = ""
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                Divider()
                ScrollView {
                    LazyVStack(spacing: 12) {
                        ForEach(directMessages) { message in
                            MessageCardView(content: message.content, isFromMainUser: message.isFromMainUser)
                        }
                    }
                    .padding()
                }
                .defaultScrollAnchor(.bottom)
                
                //TextFieldView(message: $message, onSend: <#T##(String) -> Void#>)
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
        directMessages: [],
        peerName: "Didier",
        message: ""
    )
}
