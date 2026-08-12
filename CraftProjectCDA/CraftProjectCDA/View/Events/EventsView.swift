//
//  EventsView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 11/08/2026.
//
import SwiftUI

struct EventsView: View {
    @Environment(SharedViewModel.self) private var svm

    @State private var viewModel = EventsViewModel()
    
    var body: some View {
        // Permet d'utiliser les Binding :$vm.searchText, $vm.selectedCategory
        @Bindable var vm = viewModel
        
        NavigationStack {
            VStack(alignment: .leading, spacing: 20) {
                Header(imageName: svm.mainUser?.imageName ?? "PlaceholderPortrait", title: "Évènements")
                
                HStack {
                    SearchBarCarte(searchText: $vm.searchText)
                    Button {
                        vm.showingSheet = true
                    } label: {
                        Image(systemName: "slider.vertical.3")
                        .font(.system(size: 20))
                        .foregroundStyle(.gray)
                        .frame(width: 45,height: 45)
                        .background(.white)
                        .clipShape(
                            RoundedRectangle(cornerRadius: 10))
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                            .stroke(.black,lineWidth: 1)
                        }
                    }
                }
                .padding(.horizontal)
                ScrollView {
                    LazyVStack(spacing: 16) {
                            ForEach(
                                vm.filteredEvents(from: svm.eventsData)
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

