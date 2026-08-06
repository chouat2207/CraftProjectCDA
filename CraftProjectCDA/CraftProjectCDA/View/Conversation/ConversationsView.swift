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
            ForEach(Array(conversationVM.filteredUserMessages.keys), id: \.self) {
                peer in
                ConversationCardView()
            }
            .navigationTitle("Messages")
        }
    }
}

#Preview {
    ConversationsView()
}
