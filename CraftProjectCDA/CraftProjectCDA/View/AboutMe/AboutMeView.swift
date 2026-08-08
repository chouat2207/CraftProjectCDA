//
//  AboutMeView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 85 on 08/08/2026.
//

import SwiftUI

struct AboutMeView: View {
    @State var profileViewModel: ProfileViewModel = ProfileViewModel()
    
    var columns: [GridItem] = Array(repeating: GridItem(.flexible(minimum: 10, maximum: 185)),count: 2)
    
    var body: some View {
        
        ScrollView(){
            ZStack(){
                
                HStack(){
                    
                    Image("GarasuAboutMeCarnigrass")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 340, height: 500)
                        .rotationEffect(.degrees(-10))
                        .padding(.leading,315)
                        .padding(.top,2)
                    
                }
                .ignoresSafeArea()
                
                Text(profileViewModel.mainUser.pseudonym)
                    .font(.system(size: 35))
                    .fontWeight(.bold)
                    .padding(.trailing, 190)
                    .padding(.top, -240)
                    .padding(.vertical)
                
                VStack{
                    
                    Text("""
Passioné    de     verrerie 
depuis  mon  plus  jeune
âge, et suite  à de  multi-
ples     participations    à 
des  ateliers,  j’ai  décidé 
de  me  reconvertir  dans 
cet art que  j’affectionne.

À   travers     différentes
inspirations   artistiques,
notamment    les   Oeufs
de Fabergé, et le  Codex 
Seraphinianus  de   Luigi
Serafini,    je     construis 
petit à petit mon univers
coloré et fantaisiste.
               
Adepte  du   thermo-
formage et du fusing.
""")
                    .frame(width: 200, height: 500)
                    .padding(.trailing,180)
                    .padding(.top,20)
                    .font(.callout)
                }
                
            }
            Divider()
                .frame(minHeight:5)
                .overlay(Color.mint.opacity(0.7))
                .padding(.bottom,10)
            
            Text("Mes Inspirations")
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.leading,-185)
                
            VStack{
                AboutMeInspirationDetailView()
            }
           
        }
    }
}

#Preview {
    AboutMeView()
    
}
