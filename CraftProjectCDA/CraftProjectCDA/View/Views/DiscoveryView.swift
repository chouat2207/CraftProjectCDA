//
//  DiscoveryView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 31/07/2026.
//

import SwiftUI

struct DiscoveryView: View {
    var body: some View {
        NavigationStack {
            VStack {
                DiscoveryHScrollView()
                DiscoveryHScrollView()
                DiscoveryHScrollView()
                DiscoveryHScrollView()
            }
            .navigationTitle("À découvrir")
        }
        
    }
}

#Preview {
    DiscoveryView()
}
