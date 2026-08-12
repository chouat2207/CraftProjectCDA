//
//  MainNoteCard.swift
//  CraftProjectCDA
//
//  Created by Apprenant 85 on 10/08/2026.
//

import SwiftUI

struct MainNoteCard: View {
    var body: some View {
       
        
        ZStack{
            Image("ShapeReviews")
                .resizable()
                .scaledToFit()
                .frame(width: 270)
            Text("4,5")
                .font(.system(size: 80))
                .fontWeight(.bold)
                .fontDesign(.rounded)
                .foregroundStyle(.white)
            
        }
        
       

    }
}

#Preview {
    MainNoteCard()
}
