//
//  DiscoveryHScrollView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 31/07/2026.
//

import SwiftUI

struct DiscoveryNewsScrollView: View {
    @Environment(SharedViewModel.self) var sharedVM
    @Environment(DiscoveryViewModel.self) var discoveryVM
    
    var body: some View {
        VStack{
            HStack {
                Text("Actualités")
                    .padding(.leading)
                    .font(.title3)
                    .fontWeight(.semibold)
                Spacer()
            }
            ScrollView(.horizontal) {
                LazyHStack {
                    if let mainUser = sharedVM.mainUser {
                        ForEach(discoveryVM.activeFollowedUsers(for: mainUser)) { user in
                            DiscoveryNewsView(user: user)
                        }
                    }
                }
            }
            .padding(.leading)
        }
    }
}
