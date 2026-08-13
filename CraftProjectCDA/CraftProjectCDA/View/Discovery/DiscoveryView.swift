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
            VStack(spacing: 0) {
                if let user = sharedVM.mainUser {
                    Header(imageName: user.imageName, title: "À Découvrir", user: user)
                }
                
                ScrollView {
                    DiscoveryNewsScrollView()
                    ForEach(discoveryVM.discoverySections){
                        section in
                        DiscoveryHScrollView(sectionTitle: section.title, items: section.items)
                    }
                }
            }
        }
    }
}

#Preview {
    DiscoveryView()
        .environment(DiscoveryViewModel())
        .environment(SharedViewModel())
}
