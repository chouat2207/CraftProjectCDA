//
//  BecomeArtisanButton.swift
//  CraftProjectCDA
//
//  Created by Apprenant 85 on 12/08/2026.
//

import SwiftUI

struct BecomeArtisanButton: View {
    var body: some View {
                ZStack{
                    RoundedRectangle(cornerRadius: 17)
                        .frame(width: 180,height: 40)
                        .foregroundStyle(.mint.opacity(0.5))
                    Text("Découvrir le compte Artisan")
                        .font(.caption)
                        .foregroundStyle(.black)
                }        
    }
}

#Preview {
    BecomeArtisanButton()
}
