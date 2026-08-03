//
//  DiscoveryView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 31/07/2026.
//

import SwiftUI

struct DiscoveryView: View {
    @State var discoveryVM: DiscoveryViewModel = DiscoveryViewModel()
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    DiscoveryNewsScrollView()
                    DiscoveryHScrollView(itemList: discoveryVM.artworkData)
                    DiscoveryHScrollView(itemList: discoveryVM.eventData)
                }
            }
            .navigationTitle("À découvrir")
        }
    }
}

#Preview {
    DiscoveryView()
        .environment(DiscoveryViewModel())
}
