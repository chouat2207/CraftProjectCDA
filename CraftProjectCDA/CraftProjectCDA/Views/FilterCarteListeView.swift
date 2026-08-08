//
//  FilterCarteListeView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 07/08/2026.
//

//import SwiftUI
//
//struct FilterCarteListeView: View {
//    @Environment(\.dismiss) var dismiss
//    let displayedArtworks: [ArtisanCategoryEnm]
//    @Binding var selectedContent: TypeContenuEnm?
//    @Binding var selectedCategory: ArtisanCategoryEnm?
//    var body: some View {
//        HStack{
//            Text("Filtrer par ")
//                .font(.system(size: 25,weight: .bold))
//            Spacer()
//            Button{
//                print("")
//            }label: {
//                Text("Reset")
//                    .foregroundColor(.gray)
//            }
//            
//        }
//        
//        .padding()
//        VStack(alignment: .leading, spacing: 10){
//            HStack(){
//                Text("Type de contenu ")
//                    .font(.system(size: 20,weight: .bold))
//                Spacer()
//                Button{
//                    print("")
//                }label: {
//                    Text("Effacer")
//                        .foregroundColor(.gray)
//                }
//                
//            }
//            
//            ButtonsContenu(selection: $selectedContent)
//            HStack(){
//                Text("Catégories")
//                    .font(.system(size: 20,weight: .bold))
//                Spacer()
//                Button{
//                    print("")
//                }label: {
//                    Text("Effacer")
//                        .foregroundColor(.gray)
//                }
//                
//            }
//            
//            ButtonsCategory(displayedArtworks: displayedArtworks, selection: $selectedCategory)
//                .padding(.bottom, 0)
//            HStack(){
//                Text("Distance de ma localisation")
//                    .font(.system(size: 20,weight: .bold))
//                Spacer()
//                Button{
//                    print("")
//                }label: {
//                    Text("Effacer")
//                        .foregroundColor(.gray)
//                }
//                
//            }
//           
//            ButtonsDistance()
//            
//        }
//        .padding()
//      
//    }
//}
//
//#Preview {
//    FilterCarteListeView(displayedArtworks: ArtisanCategoryEnm.allCases)
//}
import SwiftUI

struct FilterCarteListeView: View {

    let displayedArtworks: [ArtisanCategoryEnm]

    @Binding var selectedContent: TypeContenuEnm?
    @Binding var selectedCategory: ArtisanCategoryEnm?

    var body: some View {

        ScrollView {

            VStack(
                alignment: .leading,
                spacing: 20
            ) {


                HStack {

                    Text("Filtrer par")
                        .font(
                            .system(
                                size: 25,
                                weight: .bold
                            )
                        )

                    Spacer()

                    Button {
                        // Reset de tous les filtres
                        selectedContent = nil
                        selectedCategory = nil

                    } label: {

                        Text("Reset")
                            .foregroundStyle(.gray)
                    }
                }


                HStack {

                    Text("Type de contenu")
                        .font(
                            .system(
                                size: 20,
                                weight: .bold
                            )
                        )

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
                        .font(
                            .system(
                                size: 20,
                                weight: .bold
                            )
                        )

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
                        .font(
                            .system(
                                size: 20,
                                weight: .bold
                            )
                        )

                    Spacer()

                    Button {

                        print("Effacer distance")

                    } label: {

                        Text("Effacer")
                            .foregroundStyle(.gray)
                    }
                }


                ButtonsDistance()

            }
            .padding()
        }
    }
}
#Preview {
    @Previewable @State var selectedContent: TypeContenuEnm? = nil
    @Previewable @State var selectedCategory: ArtisanCategoryEnm? = nil

    FilterCarteListeView(
        displayedArtworks: ArtisanCategoryEnm.allCases,
        selectedContent: $selectedContent,
        selectedCategory: $selectedCategory
    )
}
