//
//  LogbookCardView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 85 on 09/08/2026.
//

import SwiftUI

struct LogbookCardView: View {
    @State var profileViewModel: ProfileViewModel = ProfileViewModel()
    
    var body: some View {
        
      
            
            // 1ST LOGBOOK'S POST
  
        VStack{
           
                ZStack{
                    Rectangle()
                        .cornerRadius(10)
                        .foregroundStyle(.white)
                        .shadow(radius: 2)
                    
                    VStack {
                        ZStack{
                            Image("GarasuCreation3")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 350, height: 140)
                                .clipShape(UnevenRoundedRectangle(topLeadingRadius: 10, topTrailingRadius: 10))
                        }
                        
                        ZStack{
                            HStack(alignment: .center){
                                
                                Image(profileViewModel.mainUser.imageName)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 50, height: 50)
                                    .clipShape(Circle())
                                    .overlay(Circle()
                                        .stroke(.white, lineWidth: 4)
                                    )
                                    .padding(.top,-30)
                                    .padding(.leading,2)
                                
                                Text("ORGANICA")
                                    .font(.caption)
                                    .fontWeight(.bold)
                                    .padding(.top,-10)
                                Spacer()
                                Text("14 Août 2026")
                                    .font(.caption2)
                                    .fontWeight(.semibold)
                                    .padding(.top,-10)
                                    .padding(.trailing,10)
                            }
                            
                            
                            
                        }
                        Text("""
 Ce  que  j’aime   dans  cet  art,  c’est   de  pouvoir  travailler  les
 textures afin de les  rendre  plus  organiques, plus  vivantes. De   
 pouvoir  les   transposer   dans    mon    Univers   est  pour  moi,
 une   de    mes   parties   préférées   dans    la    conception   de  
 mes   oeuvres[...]
""")
                        .font(.caption2)
                        .italic()
                        .padding(.leading,5)
                        
                        
                        Spacer()
                    }
                }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: 280)
                
                // 2ND LOGBOOK'S POST
                
                ZStack{
                    Rectangle()
                        .cornerRadius(10)
                        .foregroundStyle(.white)
                        .shadow(radius: 2)
                    
                    VStack {
                        ZStack{
                            Image("GarasuCreation2")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 350, height: 140)
                                .clipShape(UnevenRoundedRectangle(topLeadingRadius: 10, topTrailingRadius: 10))
                        }
                        
                        ZStack{
                            HStack(alignment: .center){
                                
                                Image(profileViewModel.mainUser.imageName)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 50, height: 50)
                                    .clipShape(Circle())
                                    .overlay(Circle()
                                        .stroke(.white, lineWidth: 4)
                                    )
                                    .padding(.top,-30)
                                    .padding(.leading,2)
                                
                                Text("MATIÈRES")
                                    .font(.caption)
                                    .fontWeight(.bold)
                                    .padding(.top,-10)
                                Spacer()
                                Text("05 Août 2026")
                                    .font(.caption2)
                                    .fontWeight(.semibold)
                                    .padding(.top,-10)
                                    .padding(.trailing,10)
                            }
                            
                            
                            
                        }
                        Text("""
Avez-vous   déjà   pris  le  temps d’ observer  attentivement  les
détails  qui  constituent  la  matière  que  vous  êtes  en train de
travailler ?  Ses couleurs, ses  motifs, sa  distorsion  quand  elle
rentre en  contact avec le feu ? Une  matière que  l'on  voudrait
prendre dans  ses mains[...]
""")
                        .font(.caption2)
                        .italic()
                        
                        
                        
                        Spacer()
                    }
                }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: 280)
                
                //3RD LOGBOOK'S POST
                
                ZStack{
                    Rectangle()
                        .cornerRadius(10)
                        .foregroundStyle(.white)
                        .shadow(radius: 2)
                    
                    VStack {
                        ZStack{
                            Image("GarasuCreation1")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 350, height: 140)
                                .clipShape(UnevenRoundedRectangle(topLeadingRadius: 10, topTrailingRadius: 10))
                        }
                        
                        ZStack{
                            HStack(alignment: .center){
                                
                                Image(profileViewModel.mainUser.imageName)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 50, height: 50)
                                    .clipShape(Circle())
                                    .overlay(Circle()
                                        .stroke(.white, lineWidth: 4)
                                    )
                                    .padding(.top,-30)
                                    .padding(.leading,2)
                                
                                Text("NOUVEAU DÉPART")
                                    .font(.caption)
                                    .fontWeight(.bold)
                                    .padding(.top,-10)
                                Spacer()
                                Text("27 Juillet 2026")
                                    .font(.caption2)
                                    .fontWeight(.semibold)
                                    .padding(.top,-10)
                                    .padding(.trailing,10)
                            }
                            
                            
                            
                        }
                        Text("""
En  cette  nouvelle  année   marquée   par   un tournant   décisif
dans  ma  vie,  j’ai  enfin   décidé  de  me lancer à  mon compte,
et  de  vivre  de  ma   passion  que   j’ ai  pour   le  Verre.  Cette 
première   oeuvre  est   le  fruit  d’ une   sélection   méticuleuse 
de   matériaux   qui[...]
""")
                        .font(.caption2)
                        .italic()
                        
                        
                        
                        Spacer()
                    }
                }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: 280)
            
        }
    }
}

#Preview {
    LogbookCardView()
}
