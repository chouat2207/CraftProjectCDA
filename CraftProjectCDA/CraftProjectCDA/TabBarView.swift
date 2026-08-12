//
//  ContentView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 23/07/2026.
//

import SwiftUI

enum Tabz: Hashable {
    case discover
    case research
    case events
    case messages
    case favorites
}

struct TabBarView: View {
    
    
    
    @Environment(MessageService.self) var messageService
    //    @State var sharedVM = SharedViewModel()
    @Environment(SharedViewModel.self) var sharedVM
    var body: some View {
        TabView {
            Tab("Découvrir", systemImage: "house.fill") {
                NavigationStack {
                    DiscoveryView()
                        .environment(DiscoveryViewModel())
                }
            }
            
            Tab("Recherche", systemImage: "magnifyingglass") {
                PickerListCarteView()
            }
            
            Tab("Évènements", systemImage: "calendar") {
                EventsView()
            }
            
            
            Tab("Messages", systemImage: "paperplane.fill") {
                ConversationsView()
            }
            
            Tab("Favoris", systemImage: "star.fill") {
                FavoritesView()
            }
        }

    }
}

#Preview {
    TabBarView()
        .environment(MessageService())
        .environment(SharedViewModel())
}
