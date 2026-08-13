//
//  SheetArtisanAccount.swift
//  CraftProjectCDA
//
//  Created by Apprenant 85 on 09/08/2026.
//

import SwiftUI

struct SheetArtisanAccount: View {
    @Binding var isShowingCreationView: Bool
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 390,height: 450)
                    .foregroundStyle(.mint.quinary)
                VStack(alignment: .leading){
                    Text("Devenir Artisan")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.bottom,8)
                        .padding(.leading,9)
                    Text("Partagez votre savoir-faire avec votre communauté.")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .padding(.bottom,5)
                        .padding(.leading,9)
                    Text("En passant à un compte Artisan, vous pourrez : ")
                        .font(.subheadline)
                        .fontWeight(.regular)
                        .italic()
                        .padding(.bottom,5)
                        .padding(.leading,10)
                    Text("""
                        • Créer votre vitrine,
                        • Publier vos créations,
                        • Raconter votre histoire,
                        •  Partager vos évènements,
                        • Apparaître sur la carte des Artisans,
                        """)
                    .font(.system(size: 14))
                    .italic()
                    .padding(.leading,10)
                }
                .frame(width: 400)
                .padding(.bottom,160)
                
                VStack{
                    
                    Button{
                  
                                isShowingCreationView = true
                        dismiss()
                    }label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 17)
                                .frame(width: 290,height: 40)
                                .foregroundStyle(.mint.opacity(0.6))
                            Text("Continuer")
                                .font(.subheadline)
                                .kerning(1)
                                .foregroundStyle(.black)
                        }
                    }
                    
                    Button{
                       dismiss()
                    }label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 17)
                                .frame(width: 290,height: 40)
                                .foregroundStyle(.gray.opacity(0.3))
                            Text("Plus tard")
                                .font(.subheadline)
                                .kerning(1)
                                .foregroundStyle(.black)
                        }
                    }
                   
                }
                .padding(.top,160)
            }
        }
    }
}

#Preview {
    SheetArtisanAccount(isShowingCreationView: .constant(false))
}
