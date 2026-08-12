//
//  EventsView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 11/08/2026.
//
import SwiftUI

struct EventsView: View {
    @Environment(SharedViewModel.self) private var sharedVM
    
    @State private var viewModel = EventsViewModel()
    
    var body: some View {
        // Permet d'utiliser les Binding :$vm.searchText, $vm.selectedCategory
        @Bindable var vm = viewModel
        
        NavigationStack {
            VStack(alignment: .leading, spacing: 20) {
                if let user = sharedVM.mainUser {
                    Header(imageName: user.imageName, title: "Évènements", user: user)
                }
                
                HStack {
                    SearchBarCarte(searchText: $vm.searchText)
                    Button {
                        vm.showingSheet = true
                    } label: {
                        VerticalSliderIcon()
                    }
                }
            }
            .padding(.horizontal)
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(
                        vm.filteredEvents(from: sharedVM.eventsData)
                    ) { event in
                        EventCardView(event: event)
                    }
                }.padding()
            }
            .sheet(isPresented: $vm.showingSheet) {
                FilterCarteListeView(
                    displayedArtworks:
                        ArtisanCategoryEnm.allCases,
                    selectedContent: $vm.selectedContent,
                    selectedCategory: $vm.selectedCategory,
                    selectedDistance: $vm.selectedDistance)
                .presentationDetents([.medium,.large])
                .presentationDragIndicator(.visible)
            }
        }
    }
    
}

#Preview {
    
    EventsView()
        .environment(SharedViewModel())
}

