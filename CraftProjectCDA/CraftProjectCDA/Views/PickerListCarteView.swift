//
//  ListViewPickerCarte.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 31/07/2026.
//

//import SwiftUI
//
//struct PickerListCarteView: View {
//    let displayedUser  : User
//    let artwork : [Artwork]
//    let displayedArtisans: ArtisanProfile
//    var  displayedCategory : [ArtisanCategoryEnm]
//    @State private var searchText = ""
//    @State private var selection: PickerCarte.Content = .liste
//    @State private var showingSheet = false     // Ouvre la fenêtre de filtres
// Type choisi :
//@State private var selectedContent: TypeContenuEnm? = .creation

// Catégorie choisie :
//@State private var selectedCategory: ArtisanCategoryEnm?
// 
//
//    var body: some View {
//        VStack{
//            switch selection {
//            case .liste:
//                HStack(){
//                    SearchBarCarte(searchText: $searchText)
//                     
//                    Button{
//                        FilterCarteListeView(displayedArtworks: displayedCategory)
//                        showingSheet = true
////                   
////                        print("")
//                    }
//                    label :{
//                        Image(systemName: "slider.vertical.3")
//                            .font(.system(size: 20))
//                            .foregroundStyle(.gray)
//                            .frame(width: 38, height: 44)
//                            .background(.white)
//                            .clipShape(RoundedRectangle(cornerRadius: 10))
//                            .overlay {
//                                RoundedRectangle(cornerRadius: 10)
//                                    .stroke(.black, lineWidth: 1)
//                                
//                            }
//                   }
//                    
//                    Image(displayedUser.imageName)
//                        .font(.system(size: 20))
//                        .foregroundStyle(.gray)
//                        .frame(width: 40, height: 44)
//                        .background(.white)
//                        .clipShape(Circle())
//                        .overlay {
//                            Circle()
//                                .stroke(.black, lineWidth: 1)
//                        }
//                }
//                .padding(.horizontal, 3)
//                PickerCarte(selection: $selection)
//               
//                
//            CardList(displayedArtworks: artwork)
//            case .carte:
//                ZStack(alignment: .top){
//                    CarteView()
//                    VStack{
//                        HStack(){
//                            SearchBarCarte(searchText: $searchText)
//                                .frame(width: 290)
//                                .overlay {
//                                    RoundedRectangle(cornerRadius: 10)
//                                        .stroke(.black, lineWidth: 1)
//                                }
//                            
//                            Image(systemName: "slider.vertical.3")
//                                .font(.system(size: 20))
//                                .foregroundStyle(.gray)
//                                .frame(width: 38, height: 44)
//                                .background(.white)
//                                .clipShape(RoundedRectangle(cornerRadius: 10))
//                                .overlay {
//                                    RoundedRectangle(cornerRadius: 10)
//                                        .stroke(.black, lineWidth: 1)
//                                    
//                                }
//                            Image(displayedArtisans.imageName)
//
//                                .font(.system(size: 20))
//                                .foregroundStyle(.gray)
//                                .frame(width: 40, height: 44)
//                                .background(.white)
//                                .clipShape(Circle())
//                                .overlay {
//                                    Circle()
//                                        .stroke(.black, lineWidth: 1)
//                                }
//                        }
//                        .padding(.horizontal, 3)                
//                        PickerCarte(selection: $selection)
//                    }
//                }
//            }
//            
//        }
//    }
//
//
//    }
//
//
//#Preview {
//    PickerListCarteView(displayedUser: users[0], artwork: artworks, displayedArtisans: artisanProfiles[0], displayedCategory: ArtisanCategoryEnm.allCases
//        
//    )
//}
import SwiftUI

struct PickerListCarteView: View {

    let displayedUser: User

    let artwork: [Artwork]
    
    let displayedArtisans: [ArtisanProfile]

    let displayedCategory: [ArtisanCategoryEnm]

    @State private var searchText = ""

    @State private var selection: PickerCarte.Content = .liste

    @State private var showingSheet = false

    @State private var selectedContent: TypeContenuEnm? = .creation

    @State private var selectedCategory: ArtisanCategoryEnm?
    
    
    private var hasActiveFilter: Bool {
        selectedCategory != nil || !searchText.isEmpty
    }

    
   // Filter des artworks
    private var filteredArtworks: [Artwork] {

        artwork.filter { currentArtwork in

            // Catégorie
            let categoryMatches =
                selectedCategory == nil ||
                currentArtwork.artisanCategory == selectedCategory

            // Barre de recherche
            let searchMatches =
                searchText.isEmpty ||
                currentArtwork.name
                    .localizedCaseInsensitiveContains(searchText)


            return categoryMatches && searchMatches
        }
    }


    private var filteredArtisans: [ArtisanProfile] {

        // On récupère les ID des créations
        // qui restent après le filtre
        let filteredArtworkIDs = Set(
            filteredArtworks.map { $0.id }
        )
        // On cherche ensuite quels artisans
        // possèdent ces créations
        return displayedArtisans.filter { artisan in

            artisan.artworksID.contains { artworkID in

                filteredArtworkIDs.contains(artworkID)
            }
        }
    }


    var body: some View {

        VStack {

            switch selection {

            case .liste:

                HStack {

                    SearchBarCarte(
                        searchText: $searchText
                    )

                    // Bouton filtre
                    Button {
                        showingSheet = true
                    } label: {

                        Image(systemName: "slider.vertical.3")
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
                    // Image user
                    Image(displayedUser.imageName)
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
                .padding(.horizontal, 3)

                PickerCarte(
                    selection: $selection
                )

                // Contenu de la liste

                switch selectedContent {
                case .creation, .none:  // Créations

                    CardList(
                        displayedArtworks: filteredArtworks
                    )
                // Artisans
                case .artisan:

                    ScrollView {

                        VStack {

                            ForEach(filteredArtisans) { artisan in
                                let matchedUser = users.first(where: { $0.id == artisan.id })
                                HStack {
                                    Image(artisan.imageName)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(
                                            width: 60,
                                            height: 60
                                        )
                                        .clipShape(Circle())
                                  
                                    Text(matchedUser.map { "\($0.firstName) \($0.lastName)" } ?? "Artisan")
                                                    .font(.headline)
//                                    Text(artisan.artCategory)

                                    Spacer()
                                }
                                .padding()
                            }
                        }
                    }

                // Evènements

                case .evenement:

                    Text("Evènements")
                        .font(.title2)
                }
            // CARTE
            case .carte:

                ZStack(alignment: .top) {
                    // la carte reçoit les artisans filtrés
                    CarteView(
                        displayedArtisans: filteredArtisans,
                        hasActiveFilter: hasActiveFilter
                    )

                    VStack {

                        HStack {

                            SearchBarCarte(
                                searchText: $searchText
                            )
                            .frame(width: 290)
                            .overlay {

                                RoundedRectangle(
                                    cornerRadius: 10
                                )
                                .stroke(
                                    .black,
                                    lineWidth: 1
                                )
                            }


                            // Bouton filtre
                            Button {

                                showingSheet = true

                            } label: {

                                Image(
                                    systemName: "slider.vertical.3"
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

                                Image(displayedUser.imageName)
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
                        .padding(.horizontal, 3)


                        PickerCarte(
                            selection: $selection
                        )
                    }
                }
            }
        }

        // SHEET

        .sheet(
            isPresented: $showingSheet
        ) {

            FilterCarteListeView(
                displayedArtworks: displayedCategory,

                selectedContent: $selectedContent,

                selectedCategory: $selectedCategory
            )
            .presentationDetents([
                .medium,
                .large
            ])
            .presentationDragIndicator(.visible)
        }
    }
}


#Preview {

    PickerListCarteView(

        displayedUser: users[0],

        artwork: artworks,
        displayedArtisans: artisanProfiles,

        displayedCategory: ArtisanCategoryEnm.allCases
    )
}



