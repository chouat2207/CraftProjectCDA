//
//  ConversationView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 04/08/2026.
//

import SwiftUI

struct ConversationView: View {
    @State var conversationVM: ConversationViewModel = ConversationViewModel()
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
    ConversationView()
}
