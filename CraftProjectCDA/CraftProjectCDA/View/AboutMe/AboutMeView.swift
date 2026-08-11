//
//  AboutMeView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 85 on 08/08/2026.
//

import SwiftUI

struct AboutMeView: View {
    @State var profileViewModel: ProfileViewModel = ProfileViewModel()
    
    var columns: [GridItem] = Array(repeating: GridItem(.flexible(minimum: 10, maximum: .infinity)),count: 2)
    
    var body: some View {
        
        ScrollView(){
            VStack(alignment: .leading){
                Text(profileViewModel.mainUser.pseudonym)
                    .font(.system(size: 35))
                    .fontWeight(.bold)
                    .padding(.bottom,8)
                
                HStack(){

                    Text("Passioné de verrerie  depuis mon plus jeune âge, et suite à de multiples participations à  des ateliers, j’ai décidé de me reconvertir   dans cet art que j’affectionne. \n\nÀ travers  différentes inspirations  artistiques, notamment les Oeufs de Fabergé, et le Codex Seraphinianus de Serafini, je  construis petit à petit mon univers coloré et fantaisiste.\n\nAdepte du thermoformage et du fusing.")
                        .font(.headline)
                 
                }
                
                    
               
                
            }
            .padding(.leading)
            .ignoresSafeArea()
            
            
            // }
            Divider()
                .frame(minHeight:5)
                .overlay(Color.mint.opacity(0.7))
                .padding()
            HStack{
                Text("Mes Inspirations")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.leading, 15)
                Spacer()
            }
                AboutMeInspirationDetailView()
            }
            
        
    }
}

#Preview {
    AboutMeView()
    
}
