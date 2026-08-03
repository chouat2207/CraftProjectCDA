//
//  DiscoveryHScrollView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 31/07/2026.
//

import SwiftUI

struct DiscoveryHScrollView <T: DisplayableItem & Identifiable>: View {
    var itemList: [T]
    
//    @Environment(DiscoveryViewModel.self) var discoveryVM
    var body: some View {
        VStack{
            HStack {
                Text("Créations qui pourraient vous intéresser")
                    .padding()
                Spacer()
            }
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(itemList) { item in
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
