//
//  CoverImageUserCard.swift
//  CraftProjectCDA
//
//  Created by Apprenant 85 on 09/08/2026.
//

import SwiftUI

struct CoverImageUserCard: View {
    var body: some View {
        VStack{
            ZStack{
                
                Image("GarasuPhotoDeCouverture")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 500, height: 270)
                    .clipShape(Rectangle())
                    
                    
                
                ZStack{
                    UnevenRoundedRectangle(topLeadingRadius: 32, bottomLeadingRadius: 32, bottomTrailingRadius: 0, topTrailingRadius: 0)
                        .frame(width: 100,height: 35)
                        .foregroundStyle(.white)
                        
                    HStack{
                        Image(systemName: "star.fill")
                            .font(.title3)
                            .foregroundStyle(.yellow)
                        Text("4,5/5")
                            .font(.headline)
                            .foregroundStyle(.orange)
                            .fontWeight(.bold)
                            
                    }
                    
                }
                .padding(.init(top: 225, leading: 310, bottom: 0, trailing: 10))
             
            }
            .padding(.top,-50)
            Spacer()
        }
        .ignoresSafeArea()
        
    }
}

#Preview {
    CoverImageUserCard()
}
