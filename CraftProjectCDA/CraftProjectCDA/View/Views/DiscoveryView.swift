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
                    ForEach(discoveryVM.discoverySections){
                        section in
                        DiscoveryHScrollView(sectionTitle: section.title, items: section.items)
                    }
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
