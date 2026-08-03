//
//  DiscoveryHScrollView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 31/07/2026.
//

import SwiftUI

struct DiscoveryNewsScrollView: View {
    @State private var usersList: [User] = users
    var body: some View {
        VStack{
            HStack {
                Text("Actualités")
                    .padding()
                Spacer()
            }
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach($usersList) { $user in
                        DiscoveryNewsView(imageName: $user.imageName)
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    DiscoveryNewsScrollView()
}
