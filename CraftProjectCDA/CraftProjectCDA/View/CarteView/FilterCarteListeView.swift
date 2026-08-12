//
//  FilterCarteListeView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 07/08/2026.
//
import SwiftUI

struct FilterCarteListeView: View {

    let displayedArtworks: [ArtisanCategoryEnm]
    @Binding var selectedContent: TypeContenuEnm?
    @Binding var selectedCategory: ArtisanCategoryEnm?
    @Binding var selectedDistance : DistanceEnm?

    var body: some View {
        ScrollView {
            VStack(
                alignment: .leading,
                spacing: 20
            ) {
                HStack {
                    Text("Filtrer par")
                        .TextFilter()

                    Spacer()
                    Button {
                        selectedContent = nil
                        selectedCategory = nil
                        selectedDistance = nil

                    } label: {
                        Text("Reset")
                            .foregroundStyle(.gray)
                    }
                }
                HStack {
                    Text("Type de contenu")
                        .TextFilter()
                    Spacer()
                    Button {
                        selectedContent = nil
                    } label: {
                        Text("Effacer")
                            .foregroundStyle(.gray)
                    }
                }

                ButtonsContenu(
                    selection: $selectedContent
                )
                HStack {
                    Text("Catégories")
                        .TextFilter()
                    Spacer()
                    Button {

                        selectedCategory = nil

                    } label: {
                        Text("Effacer")
                            .foregroundStyle(.gray)
                    }
                }
                ButtonsCategory(
                    displayedArtworks: displayedArtworks,
                    selection: $selectedCategory
                )
                HStack {
                    Text("Distance de ma localisation")
                        .TextFilter()
                    Spacer()
                    Button {
                        selectedDistance = nil
                    } label: {
                        Text("Effacer")
                            .foregroundStyle(.gray)
                    }
                }
                ButtonsDistance(selected: $selectedDistance)

            }
            .padding()
        }
    }
}
#Preview {
    //on ajoute Previewable pour tester les boutons de filter.
//    @Previewable @State var selectedContent: TypeContenuEnm? = nil
    FilterCarteListeView(
        displayedArtworks: ArtisanCategoryEnm.allCases,
        selectedContent: .constant(nil),
        selectedCategory: .constant(nil),
        selectedDistance: .constant(nil)
        
    )
}
