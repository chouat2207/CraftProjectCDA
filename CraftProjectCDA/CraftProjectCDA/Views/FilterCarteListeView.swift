//
//  FilterCarteListeView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 07/08/2026.
//

import SwiftUI

struct FilterCarteListeView: View {
    @Environment(\.dismiss) var dismiss
    let displayedArtworks: [ArtisanCategory]
    var body: some View {
        HStack{
            Text("Filtrer par ")
                .font(.system(size: 25,weight: .bold))
            Spacer()
            Button{
                print("")
            }label: {
                Text("Reset")
                    .foregroundColor(.gray)
            }
            
        }
        
        .padding()
        VStack(alignment: .leading, spacing: 10){
            HStack(){
                Text("Type de contenu ")
                    .font(.system(size: 20,weight: .bold))
                Spacer()
                Button{
                    print("")
                }label: {
                    Text("Effacer")
                        .foregroundColor(.gray)
                }
                
            }
            
            ButtonsContenu()
            HStack(){
                Text("Catégories")
                    .font(.system(size: 20,weight: .bold))
                Spacer()
                Button{
                    print("")
                }label: {
                    Text("Effacer")
                        .foregroundColor(.gray)
                }
                
            }
            
            ButtonsCategory(displayedArtworks: displayedArtworks)
                .padding(.bottom, 0)
            HStack(){
                Text("Distance de ma localisation")
                    .font(.system(size: 20,weight: .bold))
                Spacer()
                Button{
                    print("")
                }label: {
                    Text("Effacer")
                        .foregroundColor(.gray)
                }
                
            }
           
            ButtonsDistance()
            
        }
        .padding()
      
    }
}

#Preview {
    FilterCarteListeView(displayedArtworks: ArtisanCategory.allCases)
}
