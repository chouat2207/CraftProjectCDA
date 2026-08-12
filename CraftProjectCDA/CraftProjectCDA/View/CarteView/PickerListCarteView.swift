//
//  ListViewPickerCarte.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 31/07/2026.


import SwiftUI

struct PickerListCarteView: View {
//Shared View Model

    @Environment(SharedViewModel.self)
    private var svm

    // ViewModel

    @State private var viewModel =
        PickerListCarteViewModel()


    var body: some View {

        @Bindable var vm = viewModel


        // Créations filtrées

        let filteredArtworks =
            vm.filteredArtworks(
                from: svm.artworksData
            )

        // Artisans filtrés

        let filteredArtisans =
            vm.filteredArtisans(
                from: svm.artisanProfilesData,
                artworks: svm.artworksData
            )


        NavigationStack {

            VStack {

                switch vm.selection {
                // LISTE
            
                case .liste:

                    HStack {

                        // Recherche

                        SearchBarCarte(
                            searchText: $vm.searchText
                        )


                        // MARK: Bouton filtre

                        Button {

                            vm.showingSheet = true

                        } label: {

                            Image(
                                systemName:
                                    "slider.vertical.3"
                            )
                            .font(.system(size: 20))
                            .foregroundStyle(.gray)
                            .frame(
                                width: 38,
                                height: 44
                            )
                            .background(.white)
                            .clipShape(
                                RoundedRectangle(
                                    cornerRadius: 10
                                )
                            )
                            .overlay {

                                RoundedRectangle(
                                    cornerRadius: 10
                                )
                                .stroke(
                                    .black,
                                    lineWidth: 1
                                )
                            }
                        }


                        // Image utilisateur

                        if let mainUser = svm.mainUser {
                            Image(mainUser.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(
                                    width: 40,
                                    height: 44
                                )
                                .clipShape(Circle())
                                .overlay {

                                    Circle()
                                        .stroke(
                                            .black,
                                            lineWidth: 1
                                        )
                                }
                        }
                    }
                    .padding(.horizontal, 3)


                    PickerCarte(
                        selection: $vm.selection
                    )
                    // CONTENU
   

                    switch vm.selectedContent {

                    // Créations

                    case .creation, .none:

                        ListView(
                            displayedArtworks: filteredArtworks,
                            onArtworkSelected: { selectedArtwork in

                                vm.openArtworkDetail(
                                    selectedArtwork
                                )
                            }
                        )


                    // Artisans

                    case .artisan:

                        ArtisanListView(
                            filteredArtisans:
                                filteredArtisans
                        )


                    // evenements

                    case .evenement:

                        Text("Évènements")
                            .font(.title2)
                    }


                // CARTE
                case .carte:

                    ZStack(
                        alignment: .top
                    ) {

                        CarteView(
                            displayedArtisans:
                                filteredArtisans,

                            hasActiveFilter:
                                vm.hasActiveFilter
                        )


                        VStack {

                            HStack {

                                // Recherche

                                SearchBarCarte(
                                    searchText:
                                        $vm.searchText
                                )


                                //Filtre

                                Button {

                                    vm.showingSheet = true

                                } label: {

                                    Image(
                                        systemName:
                                            "slider.vertical.3"
                                    )
                                    .font(
                                        .system(size: 20)
                                    )
                                    .foregroundStyle(.gray)
                                    .frame(
                                        width: 38,
                                        height: 44
                                    )
                                    .background(.white)
                                    .clipShape(
                                        RoundedRectangle(
                                            cornerRadius: 10
                                        )
                                    )
                                    .overlay {

                                        RoundedRectangle(
                                            cornerRadius: 10
                                        )
                                        .stroke(
                                            .black,
                                            lineWidth: 1
                                        )
                                    }
                                }


                                // Image utilisateur

                                if let mainUser =
                                    svm.mainUser {

                                    Image(
                                        mainUser.imageName
                                    )
                                    .resizable()
                                    .scaledToFill()
                                    .frame(
                                        width: 40,
                                        height: 44
                                    )
                                    .clipShape(Circle())
                                    .overlay {

                                        Circle()
                                            .stroke(
                                                .black,
                                                lineWidth: 1
                                            )
                                    }
                                }
                            }
                            .padding(
                                .horizontal,
                                3
                            )


                            PickerCarte(
                                selection:
                                    $vm.selection
                            )
                        }
                    }
                   
                }
            }

            // NAVIGATION DETAIL

            .navigationDestination(
                isPresented:
                    $vm.navigateToArtworkDetail
            ) {

                if let selectedArtwork =
                    vm.selectedArtwork {

                    ArtworkDetailView(
                        viewModel:
                            ArtworkDetailViewModel(
                                artwork:
                                    selectedArtwork
                            )
                    )
                }
            }
            // SHEET 

            .sheet(
                isPresented:
                    $vm.showingSheet
            ) {

                FilterCarteListeView(

                    displayedArtworks:
                        ArtisanCategoryEnm.allCases,

                    selectedContent:
                        $vm.selectedContent,

                    selectedCategory:
                        $vm.selectedCategory,

                    selectedDistance:
                        $vm.selectedDistance
                )
                .presentationDetents([
                    .medium,
                    .large
                ])
                .presentationDragIndicator(
                    .visible
                )
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



