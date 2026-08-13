//  ListViewPickerCarte.swift
//  CraftProjectCDA
//  Created by Apprenant 77 on 31/07/2026.
import SwiftUI
struct PickerListCarteView: View {
    @Environment(SharedViewModel.self)
    private var svm
    
    @State private var viewModel = PickerListCarteViewModel()
    var body: some View {
        @Bindable var vm = viewModel
        
        let filteredArtworks =
        vm.filteredArtworks(
            from: svm.artworksData
        )
        let filteredArtisans =
        vm.filteredArtisans(
            from: svm.artisanProfilesData,
            artworks: svm.artworksData
        )
        
        NavigationStack {
            VStack(spacing: 0) {
                switch vm.selection {
                case .liste:
                    
                    HStack {
                        SearchBarCarte(
                            searchText: $vm.searchText
                        )
                        Button {
                            vm.showingSheet = true
                            
                        } label: {
                            VerticalSliderIcon()
                        }
                        
                        if let mainUser = svm.mainUser {
                            Image(mainUser.imageName)
                                .resizable()
                                .imageModifier(frameWidth: 40, frameHeight: 44, clipShape: Circle())
                                .scaledToFill()
                                .overlay {
                                    Circle().stroke(.black,lineWidth: 1)
                                }
                        }
                    } .padding(.horizontal, 7)
                    
                    PickerCarte(
                        selection: $vm.selection
                    )
                    
                    switch vm.selectedContent {
                        
                    case .creation, .none:
                        ListView(
                            displayedArtworks: filteredArtworks,
                            onArtworkSelected: { selectedArtwork in
                                
                                vm.openArtworkDetail(
                                    selectedArtwork
                                )
                            }
                        )
                        
                    case .artisan:
                        ArtisanListView(filteredArtisans:
                                            filteredArtisans)
                    case .evenement:
                        Text("Évènements").font(.title2)
                    }
                case .carte:
                    ZStack(alignment: .top) {
                        CarteView(
                            displayedArtisans: filteredArtisans,
                            hasActiveFilter: vm.hasActiveFilter
                        )
                        VStack(spacing: 0) {
                            HStack{
                                SearchBarCarte(
                                    searchText:
                                        $vm.searchText
                                )
                                
                                Button {
                                    
                                    vm.showingSheet = true
                                    
                                } label: {
                                    VerticalSliderIcon()
                                }
                                
                                
                                if let mainUser =
                                    svm.mainUser {
                                    Image(mainUser.imageName)
                                        .imageModifier(frameWidth: 40, frameHeight: 44, clipShape: Circle())
                                        .overlay { Circle().stroke(.black, lineWidth: 1)}
                                }
                                                          }
                            
                            .padding(.horizontal,7)
                            PickerCarte(
                                selection:
                                    $vm.selection
                            )
                        }
                        .offset(y: -54)
                    }
                    .padding(0)
                }
            }
            .navigationDestination(
                isPresented:
                    $vm.navigateToArtworkDetail
            ) {
                if let selectedArtwork =
                    vm.selectedArtwork {
                    ArtworkDetailView(
                        viewModel:
                            ArtworkDetailViewModel(artwork: selectedArtwork), artwork: selectedArtwork
                    )
                }
            }
            .sheet(
                isPresented:
                    $vm.showingSheet
            ) {
                FilterCarteListeView(
                    displayedArtworks:ArtisanCategoryEnm.allCases,
                    selectedContent: $vm.selectedContent,
                    selectedCategory: $vm.selectedCategory,
                    selectedDistance: $vm.selectedDistance
                )
                .presentationDetents([.medium,.large])
                .presentationDragIndicator(.visible)
            }
        }
        
    }
}
#Preview {
    
    PickerListCarteView()
        .environment(
            SharedViewModel()
        )
}
