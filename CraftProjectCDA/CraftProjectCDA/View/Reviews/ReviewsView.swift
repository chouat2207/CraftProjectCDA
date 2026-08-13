//
//  ReviewsView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 85 on 10/08/2026.
//

import SwiftUI

struct ReviewsView: View {
    
    var body: some View {
        ScrollView{
            VStack(spacing: 1){
                ReviewUserCard()
                
                ReviewUserCard()
                
                ReviewUserCard()
            }
        }
    }
}

#Preview {
    ReviewsView()
}
