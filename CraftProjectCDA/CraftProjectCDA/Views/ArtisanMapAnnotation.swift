//
//  ArtisanMapAnnotation.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 08/08/2026.
//

import SwiftUI

struct ArtisanMapAnnotation: View {
    let imageName: String
    var body: some View {
        Image(imageName)
                   .resizable()
                   .scaledToFill()
                   .frame(width: 45, height: 45)
                   .clipShape(Circle())
                   .overlay {
                       Circle()
                           .stroke(.white, lineWidth: 2)
                   }  
    }
}

#Preview {
    ArtisanMapAnnotation(imageName: "")
}
