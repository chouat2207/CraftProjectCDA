//
//  ListViewPickerCarte.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 31/07/2026.
//

import SwiftUI

struct PickerListCarteView: View {
    let displayedUser  : User
    let artwork : [Artwork]
    let displayedArtisans: ArtisanProfile

//    let displayedUser : User = users[1]
//    let displayedArtisans: [ArtisanProfile]
  //  @State private var searchText: SearchBarCarte = ""
    @State private var searchText = ""
    @State private var selection: PickerCarte.Content = .liste

 

    var body: some View {
        VStack{
            switch selection {
            case .liste:
                HStack(){
                    SearchBarCarte(searchText: $searchText)
                        .frame(width: 290)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.black, lineWidth: 1)
                        }
                    
                    Image(systemName: "slider.vertical.3")
                        .font(.system(size: 20))
                        .foregroundStyle(.gray)
                        .frame(width: 38, height: 44)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.black, lineWidth: 1)
                            
                        }
                    Image(displayedUser.imageName)
                        .font(.system(size: 20))
                        .foregroundStyle(.gray)
                        .frame(width: 40, height: 44)
                        .background(.white)
                        .clipShape(Circle())
                        .overlay {
                            Circle()
                                .stroke(.black, lineWidth: 1)
                        }
                }
                .padding(.horizontal, 3)
                PickerCarte(selection: $selection)
               
                
            CardList(displayedArtworks: artwork)
            case .carte:
                ZStack(alignment: .top){
                    CarteView()
                    VStack{
                        HStack(){
                            SearchBarCarte(searchText: $searchText)
                                .frame(width: 290)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(.black, lineWidth: 1)
                                }
                            
                            Image(systemName: "slider.vertical.3")
                                .font(.system(size: 20))
                                .foregroundStyle(.gray)
                                .frame(width: 38, height: 44)
                                .background(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .overlay {
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(.black, lineWidth: 1)
                                    
                                }
                            Image(displayedArtisans.imageName)

                                .font(.system(size: 20))
                                .foregroundStyle(.gray)
                                .frame(width: 40, height: 44)
                                .background(.white)
                                .clipShape(Circle())
                                .overlay {
                                    Circle()
                                        .stroke(.black, lineWidth: 1)
                                }
                        }
                        .padding(.horizontal, 3)                
                        PickerCarte(selection: $selection)
                    }
                }
            }
            
        }
    }


    }


#Preview {
    PickerListCarteView(displayedUser: users[0], artwork: artworks, displayedArtisans: artisanProfiles[0]
        
    )
}
