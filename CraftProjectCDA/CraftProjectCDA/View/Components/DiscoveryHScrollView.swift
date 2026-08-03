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
        VStack{
            HStack {
                Text(sectionTitle)
                    .padding()
                Spacer()
            }
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(items, id:\.id) { item in
                        DiscoveryCard(itemName: item.name, itemImageName: item.imageName)
                    }
                }
            }
            .padding()
        }
    }
}

//#Preview {
//    DiscoveryHScrollView<T: DisplayableItem & Identifiable>()
//        .environment(DiscoveryViewModel())
//}
