//
//  ContentView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 23/07/2026.
//

import SwiftUI

struct TabBarView: View {
    @State var sharedVM = SharedViewModel()
    
    var body: some View {
        
        TabView {
            Tab("Découvrir", systemImage: "house.fill") {
                DiscoveryView()
                    .environment(DiscoveryViewModel())
                }
            
            Tab("Recherche", systemImage: "magnifyingglass") {
                CarteView()
            }
            
            Tab("Évènements", systemImage: "calendar") {
            
            }
            
            Tab("Messages", systemImage: "paperplane.fill") {
                ConversationsView()
            }
            
            Tab("Favoris", systemImage: "star.fill") {
                
            }
        }
        .environment(sharedVM)
    }
} 

#Preview {
    TabBarView()
}
