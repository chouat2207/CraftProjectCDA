//
//  ReviewsView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 85 on 10/08/2026.
//

import SwiftUI

struct ReviewsView: View {
    
    var body: some View {
        VStack(spacing: 1){
            MainNoteCard()
            Divider()
                .frame(minHeight:5)
                .overlay(Color.mint.opacity(0.7))
                .padding(.vertical,20)
            ReviewUserCard()
           
            ReviewUserCard()
            
            ReviewUserCard()
                    }
    }
}

#Preview {
    ReviewsView()
}
