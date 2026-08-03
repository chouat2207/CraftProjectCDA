//
//  ListViewPickerCarte.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 31/07/2026.
//

import SwiftUI

struct PickerListCarteView: View {

    let displayedArtisans: [ArtisanProfile]
  //  @State private var searchText: SearchBarCarte = ""

    @State private var selection: PickerCarte.Content = .liste

 

    var body: some View {
        VStack{
            switch selection {
            case .liste:
             //  SearchBarCarte(searchText: $searchText)
                PickerCarte(selection: $selection)
                CardList()
            case .carte:
                ZStack(alignment: .top){
                    CarteView()
                    PickerCarte(selection: $selection)}
            }
            
        }
    }


    }


#Preview {
    PickerListCarteView(
     //   displayedUsers: users,
        displayedArtisans: artisanProfiles
    )
}
