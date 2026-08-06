//
//  DirectMessageView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 05/08/2026.
//

import SwiftUI

struct MessageView: View {
    var body: some View {
        NavigationStack {
            List {
                ConversationCardView()
                ConversationCardView()
                ConversationCardView()
            }
            .navigationTitle("Name")
        }
    }
}

#Preview {
    MessageView()
}
