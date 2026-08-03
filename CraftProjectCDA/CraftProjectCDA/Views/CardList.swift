//
//  CardList.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 03/08/2026.
//

import SwiftUI

struct CardList: View {
    let displayedUsers: [User] = users

    private let columns = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10)
    ]
    var body: some View {
            ScrollView {
                LazyVGrid(
                    columns: columns,
                    spacing: 20
                ) {
                    ForEach(displayedUsers) { user in
                        ListCard(user: user)
                    }
                }
                .padding()
            }
    }
}

#Preview {
    CardList()
}
