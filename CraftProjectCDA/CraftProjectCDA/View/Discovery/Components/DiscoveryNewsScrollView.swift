//
//  DiscoveryHScrollView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 31/07/2026.
//

import SwiftUI

struct DiscoveryNewsScrollView: View {
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
                    ForEach(discoveryVM.filteredUserListByArtisanProfileActive) { user in
                        DiscoveryNewsView(imageName: user.imageName)
                    }
                }
            }
//            .padding([.bottom, .leading])
            .padding(.leading)
        }
    }
}

//#Preview {
//    DiscoveryNewsScrollView()
//}
