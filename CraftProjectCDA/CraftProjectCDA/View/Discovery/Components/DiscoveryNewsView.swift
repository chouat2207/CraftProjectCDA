//
//  DiscoveryNewsView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 03/08/2026.
//

import SwiftUI

struct DiscoveryNewsView: View {
    var user: User

    var body: some View {
        NavigationLink {
            ArtisanProfileView(user: user)
        }
        label: {
            ZStack {
                Circle()
                    .frame(width: 94, height: 94)
                    .foregroundStyle(.green)
                VStack {
                    Image(user.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 84, height: 84)
                        .clipShape(Circle())
                }
            }
        }
    }
}
