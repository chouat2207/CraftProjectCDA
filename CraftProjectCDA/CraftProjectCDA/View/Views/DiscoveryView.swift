//
//  DiscoveryView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 31/07/2026.
//

import SwiftUI

struct DiscoveryView: View {
    @State var discoveryVM: DiscoveryViewModel = DiscoveryViewModel(artworkData: artworks)
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    DiscoveryHScrollView()
                    DiscoveryHScrollView()
                    DiscoveryHScrollView()
                    DiscoveryHScrollView()
                }
            }
            .navigationTitle("À découvrir")
        }
        
    }
}

#Preview {
    DiscoveryView()
}
