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
                    .imageModifier(frameWidth: 410, frameHeight: 230, clipShape: Rectangle())
                    .ignoresSafeArea()
                
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
                .offset(x: 150, y: 95)
            }
        }
        .ignoresSafeArea()
        
    }
}

#Preview {
    CoverImageUserCard()
}
