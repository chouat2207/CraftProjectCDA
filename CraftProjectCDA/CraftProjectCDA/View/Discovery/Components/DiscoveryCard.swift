//
//  DiscoveryCard.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 02/08/2026.
//

import SwiftUI

struct DiscoveryCard: View {
    @Environment(DiscoveryViewModel.self) var discoveryVM
    var item: DisplayableItem
    var body: some View {
            NavigationLink {
                // check type de item + if condition
                switch item {
                case let item as Event:
                    EventDetailView(event: item)
                case let item as Artwork:
                    ArtworkDetailView(artwork: item)
                case let item as User:
                    ProfileView(user: item)
                default:
                    DiscoveryView()
                }
            }
            label: {
                ZStack {
                    Rectangle()
                    
                        .cornerRadius(10)
                        .foregroundStyle(.white)
                    VStack {
                        Image(discoveryVM.getItemImage(imageName: item.imageName))
                            .resizable()
                            .scaledToFill()
                            .frame(width: 180, height: 140)
                            .clipShape(UnevenRoundedRectangle(topLeadingRadius: 10, topTrailingRadius: 10))
                        Spacer()
                        HStack {
                            Text(item.name)
                                .font(.caption)
                                .foregroundStyle(.black)
                            Spacer()
                        }
                        
                        .padding(.init(top: 5, leading: 10, bottom: 5, trailing: 0))
                        Spacer()
                    }
                }
                .padding()
                .frame(width: 180, height: 190)
                .shadow(radius: 2)
            }
    }
}
