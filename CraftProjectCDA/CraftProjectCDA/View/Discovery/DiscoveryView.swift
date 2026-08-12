//
//  DiscoveryView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 31/07/2026.
//

import SwiftUI

struct DiscoveryView: View {
    @Environment(SharedViewModel.self) var sharedVM
    @State var discoveryVM: DiscoveryViewModel = DiscoveryViewModel()
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    DiscoveryNewsScrollView()
                    ForEach(discoveryVM.discoverySections){
                        section in
                        DiscoveryHScrollView(sectionTitle: section.title, items: section.items)
                    }
                }
            }
            .navigationTitle("À découvrir")
            .discoveryToolbar(
                imageName: sharedVM.mainUser?.imageName ?? "PlaceholderPortrait"
            )
        }
    }
}

#Preview {
    DiscoveryView()
        .environment(DiscoveryViewModel())
        .environment(SharedViewModel())
}
