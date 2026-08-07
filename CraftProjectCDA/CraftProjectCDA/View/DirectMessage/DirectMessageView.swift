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
    var body: some View {
        NavigationStack {
            ForEach(directMessages) { message in
                Text(message.content)
            }
            .navigationTitle(peerName)
        }
    }
}

#Preview {
   // DirectMessageView()
}
