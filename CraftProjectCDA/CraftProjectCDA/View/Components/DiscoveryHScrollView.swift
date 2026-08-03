//
//  DiscoveryHScrollView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 31/07/2026.
//

import SwiftUI

struct DiscoveryHScrollView: View {
    @State private var artworkList = artworks
    var body: some View {
        VStack{
            HStack {
                Text("Créations qui pourraient vous intéresser")
                    .padding()
                Spacer()
            }
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach($artworkList) { $artwork in
                        DiscoveryCard(itemName: $artwork.name, itemImageName: $artwork.imageName)
                            .onAppear {
                                print(index)
                            }
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    DiscoveryHScrollView()
}
