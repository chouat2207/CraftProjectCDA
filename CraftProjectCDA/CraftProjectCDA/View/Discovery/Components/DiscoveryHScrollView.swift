//
//  DiscoveryHScrollView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 31/07/2026.
//

import SwiftUI

struct DiscoveryHScrollView: View {
    var sectionTitle: String
    var items: [any DisplayableItem & Identifiable]
    
//    @Environment(DiscoveryViewModel.self) var discoveryVM
    var body: some View {
        
        VStack {
            HStack {
                Text(sectionTitle)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .padding(.leading)
                Spacer()
            }
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(items, id:\.id) { item in
                        DiscoveryCard(item: item)
                    }
                }
            }
//            .padding([.bottom, .leading])
            .padding(.bottom, 2)
            .padding(.leading)
        }
    }
}

//#Preview {
//    DiscoveryHScrollView<T: DisplayableItem & Identifiable>()
//        .environment(DiscoveryViewModel())
//}
